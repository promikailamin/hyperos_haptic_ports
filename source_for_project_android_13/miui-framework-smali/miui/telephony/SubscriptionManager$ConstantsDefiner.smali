.class Lmiui/telephony/SubscriptionManager$ConstantsDefiner;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstantsDefiner"
.end annotation


# static fields
.field private static final blacklist PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final blacklist SLOT_ID:Ljava/lang/String; = "slot_id"

.field private static final blacklist SUBSCRIPTION_ID:Ljava/lang/String; = "subscription_id"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getDefaultPhoneIdConstant()I
    .registers 1

    .line 79
    const v0, 0x7fffffff

    return v0
.end method

.method static blacklist getDefaultSlotIdConstant()I
    .registers 1

    .line 83
    const v0, 0x7fffffff

    return v0
.end method

.method static blacklist getDefaultSubscriptionIdConstant()I
    .registers 1

    .line 75
    const v0, 0x7fffffff

    return v0
.end method

.method static blacklist getInvalidPhoneIdConstant()I
    .registers 1

    .line 67
    const/4 v0, -0x1

    return v0
.end method

.method static blacklist getInvalidSlotIdConstant()I
    .registers 1

    .line 71
    const/4 v0, -0x1

    return v0
.end method

.method static blacklist getInvalidSubscriptionIdConstant()I
    .registers 1

    .line 63
    const/4 v0, -0x1

    return v0
.end method

.method static blacklist getPhoneKeyConstant()Ljava/lang/String;
    .registers 1

    .line 91
    const-string v0, "phone_id"

    return-object v0
.end method

.method static blacklist getSlotKeyConstant()Ljava/lang/String;
    .registers 1

    .line 95
    const-string v0, "slot_id"

    return-object v0
.end method

.method static blacklist getSubscriptionKeyConstant()Ljava/lang/String;
    .registers 1

    .line 87
    const-string v0, "subscription_id"

    return-object v0
.end method
