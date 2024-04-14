from django.db import models
from django.contrib.auth import get_user_model
from django.utils.translation import gettext as _
import uuid
import enum

User = get_user_model()


class SHOPROLE(enum.Enum):
    OWNER = "owner"
    MANAGER = "manager"
    SALER = "saler"


class SHOPACTION(enum.Enum):
    EDIT = "edit"
    DELETE = "delete"
    SALE = "sale"
    PRICE_CHANGE = "price_change"
    ORDER_CONFIRM = "order_confirm"
    ORDER_CANCEL = "order_cancel"


class NotificationType(enum.Enum):
    BROADCAST = "broadcast"
    JUSTONE = "just_one"
    GROUP = "group"


class Catagory(models.Model):
    name = models.CharField(max_length=255)
    desc = models.TextField()

    class Meta:
        db_table = "Catagory"
        get_latest_by = "id"
        default_related_name = "catagory"
        ordering = ["id"]


class Brand(models.Model):
    name = models.CharField(max_length=255)
    catagory = models.ForeignKey(Catagory, on_delete=models.SET_NULL, null=True)
    desc = models.TextField()


class Address(models.Model):
    lat = models.DecimalField(null=True, max_digits=12, decimal_places=10)
    lng = models.DecimalField(null=True, max_digits=13, decimal_places=10)

    plus_code = models.CharField(max_length=255, null=True)
    sublocality = models.CharField(max_length=255, null=True)
    locality = models.CharField(max_length=255, null=True)
    admin_1 = models.CharField(max_length=255, null=True)
    admin_2 = models.CharField(max_length=255, null=True)
    country = models.CharField(max_length=255, null=True)

    class Meta:
        db_table = "Address"
        get_latest_by = "id"
        default_related_name = "address"
        ordering = ["id"]


class Employe(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    role = models.CharField(max_length=255)
    shop = models.ForeignKey("Shop", on_delete=models.CASCADE)

    class Meta:
        db_table = "Employe"
        get_latest_by = "id"
        default_related_name = "employes"
        ordering = ["id"]


# shop1= shop1.owner

# user1--> Shop.objects.filter(owner=user1)
# user1--> user1.myshops.all()


class Shop(models.Model):
    def upload_to(self, filename):
        return "shops/{0}/{1}".format(self, filename)

    name = models.CharField(max_length=255)
    logo = models.ImageField(upload_to=upload_to, null=True)
    bg_image = models.ImageField(upload_to=upload_to, null=True)
    owner = models.ForeignKey(User, on_delete=models.CASCADE, related_name="myshops")
    address = models.ForeignKey(Address, null=True, on_delete=models.SET_NULL)
    catagory = models.ForeignKey(Catagory, on_delete=models.SET_NULL, null=True)
    created_at = models.DateTimeField(auto_now=True)
    update_at = models.DateTimeField(auto_now_add=True)
    employe = models.ManyToManyField(User, through=Employe, blank=True)

    class Meta:
        db_table = "Shop"
        get_latest_by = "created_at"
        default_related_name = "shop"
        ordering = ["id"]


class Product(models.Model):
    units = [
        "Piece (pc)",
        "Kilogram(kg)",
        "Gram(g)",
        "Pound(lb)",
        "Ounce(oz)",
        "Liter(L)",
        "Milliliter(mL)",
        "Fluid Ounce (fl oz)",
        "Gallon(gal)",
        "Meter (m)",
        "Centimeter (cm)",
        "Inch (in)",
        "Foot (ft)",
        "Square Meter",
        "Square Foot",
        "Cubic Meter",
        "Cubic Foot",
        "Dozen (dz)",
        "Pack (pk)",
        "Set (set)",
    ]

    def upload_to(self, filename):
        return "{0}/{1}".format(self.shop.name, filename)

    name = models.CharField(max_length=255)
    image = models.ImageField(upload_to=upload_to, null=True)
    buying_price = models.PositiveIntegerField()
    selling_price = models.PositiveIntegerField()
    quantity = models.PositiveIntegerField()
    desc = models.TextField()
    brand = models.ForeignKey(Brand, on_delete=models.CASCADE)
    catagory = models.ForeignKey(Catagory, on_delete=models.SET_NULL, null=True)
    unit = models.CharField(max_length=255, choices=map(lambda x: (x, x), units))
    shop = models.ForeignKey(Shop, on_delete=models.CASCADE)

    class Meta:
        db_table = "Product"
        get_latest_by = "id"
        default_related_name = "product"
        ordering = ["id"]


class Order(models.Model):
    status = models.PositiveSmallIntegerField(
        choices=[
            (1, "pending"),
            (2, "confirmed"),
            (3, "collectable"),
            (4, "canceled"),
            (5, "extended"),
        ]
    )
    sold_by = models.ForeignKey(
        User, on_delete=models.SET_NULL, null=True, related_name="delivered_order"
    )
    msg = models.TextField()
    shop = models.ForeignKey(Shop, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    class Meta:
        db_table = "Order"
        get_latest_by = "id"
        default_related_name = "order"
        ordering = ["id"]


class Sale(models.Model):
    discount = models.PositiveSmallIntegerField(default=0)
    price = models.PositiveSmallIntegerField(default=0)
    order = models.ForeignKey(Order, on_delete=models.PROTECT)
    desc = models.TextField()

    class Meta:
        db_table = "Sale"
        get_latest_by = "id"
        default_related_name = "sale"
        ordering = ["id"]


class Item(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveSmallIntegerField(default=1)
    order = models.ForeignKey(Order, on_delete=models.CASCADE, null=True)
    sale = models.ForeignKey(Sale, on_delete=models.CASCADE, null=True)
    created_at = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = "Item"
        get_latest_by = "id"
        default_related_name = "items"
        ordering = ["id"]


class ShopActivity(models.Model):
    employe = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    shop = models.ForeignKey(Shop, on_delete=models.CASCADE)
    desc = models.TextField()
    action = models.CharField(max_length=255, choices=[])
    timestamp = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = "ShopActivity"
        get_latest_by = "id"
        default_related_name = "activities"
        ordering = ["id"]


class ShopReview(models.Model):
    rate_choices = [1, 2, 3, 4, 5]
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    shop = models.ForeignKey(Shop, on_delete=models.CASCADE)
    content = models.TextField()
    rate = models.PositiveSmallIntegerField(choices=map(lambda x: (x, x), rate_choices))

    class Meta:
        db_table = "ShopReview"
        get_latest_by = "id"
        default_related_name = "reviews"
        ordering = ["id"]


class Notification(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    title = models.CharField(max_length=255)
    timestamp = models.DateTimeField(auto_now=True)
    type = models.CharField(
        max_length=255,
        choices=[
            (NotificationType.BROADCAST, NotificationType.BROADCAST.name),
            (NotificationType.GROUP, NotificationType.GROUP.name),
            (NotificationType.JUSTONE, NotificationType.JUSTONE.name),
        ],
    )

    content = models.TextField()

    class Meta:
        db_table = "Notification"
        get_latest_by = "id"
        default_related_name = "notifications"
        ordering = ["timestamp"]


class ProductReaction(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    is_like = models.BooleanField()
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = "ProductReaction"
        get_latest_by = "id"
        default_related_name = "reactions"
        ordering = ["id"]
# till this copied

class Policy(models.Model):
    number = models.PositiveBigIntegerField()
    detail = models.TextField()
    created_at = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = "Policy"
        get_latest_by = "id"
        default_related_name = "policies"
        ordering = ["id"]


class Report(models.Model):
    report_status = [
        (0, "pending"),
        (1, "confirmed"),
        (2, "canceled"),
    ]
    policy = models.ForeignKey(Policy, on_delete=models.SET_NULL, null=True)
    shop = models.ForeignKey(Shop, on_delete=models.SET_NULL, null=True)
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    status = models.PositiveSmallIntegerField(choices=report_status)
    phone_num = models.CharField(max_length=255)
    violater = models.ForeignKey(
        User, on_delete=models.SET_NULL, null=True, related_name="violated_rules"
    )

    class Meta:
        db_table = "Report"
        get_latest_by = "id"
        default_related_name = "reports"
        ordering = ["id"]


class Interest(models.Model):
    catagory = models.ForeignKey(Catagory, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    class Meta:
        db_table = "Interest"
        get_latest_by = "id"
        default_related_name = "interests"
        ordering = ["id"]


class GiftCard(models.Model):
    coupon_scope = [("application", 0), ("shop", 1), ("product", 2)]
    coupon_id = models.UUIDField(default=uuid.uuid4)
    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    created_by = models.ForeignKey(
        User, on_delete=models.SET_NULL, null=True, related_name="created_gift_cards"
    )
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True)
    scope = models.PositiveSmallIntegerField(choices=coupon_scope)

    redemed = models.BooleanField(default=False)

    expire_date = models.DateTimeField(null=True)
    created_at = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = "Gift_Card"
        get_latest_by = "id"
        default_related_name = "cards"
        ordering = ["id"]


# class GiftCard(models.Model):
#     gift_choices = [("APP", 0), ("SHOP", 1), ("PRODUCt", 2)]
#     coupon_id = models.UUIDField(default=uuid.uuid4)
#     owner = models.ForeignKey(User, on_delete=models.CASCADE)
#     scope = models.PositiveSmallIntegerField(choices=gift_choices)
#     created_by = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)


#     redeemed = models.BooleanField(default=False)
#     expired_date = models.DateTimeField(null=True)
class Follow(models.Model):
    shop = models.ForeignKey(Shop, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = "Follow"
        get_latest_by = "id"
        default_related_name = "follow"
        ordering = ["id"]


class Blocked(models.Model):
    shop = models.ForeignKey(Shop, on_delete=models.CASCADE, null=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE, null=True)
    end_date = models.DateTimeField(null=True)

    created_at = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = "Blocked"
        get_latest_by = "id"
        default_related_name = "blocked"
        ordering = ["id"]


class ShopPreference(models.Model):
    shop = models.ForeignKey(Shop, on_delete=models.CASCADE)
    is_available_online = models.BooleanField(default=True)
    notify_new_product = models.BooleanField(default=True)
    accept_order = models.BooleanField(default=True)

    class Meta:
        db_table = "Shop_Preference"
        get_latest_by = "id"
        default_related_name = "preferences"
        ordering = ["id"]


class InActiveProduct(models.Model):
    product_id = models.OneToOneField(Product, on_delete=models.CASCADE)

    class Meta:
        db_table = "InActiveProduct"
        get_latest_by = "id"
        default_related_name = "inactive"
        ordering = ["id"]


# class Preference(models.Model):
#     class Meta:
#         db_table = "Preference"
#         get_latest_by = "id"
#         default_related_name = "preference"
#         ordering = ["id"]


# class Referal(models.Model):
#     referal_num=models.UUIDField(default=)
#     user_joined=models.PositiveSmallIntegerField(default=0)
#     user=models.ForeignKey(User,on_delete=models.CASCADE)
#     class Meta:
#         db_table = "Referal"
#         get_latest_by = "id"
#         default_related_name = "referals"
#         ordering = ["id"]
