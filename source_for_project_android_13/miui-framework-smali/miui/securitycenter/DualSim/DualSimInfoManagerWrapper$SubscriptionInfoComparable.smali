.class final Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;
.super Ljava/lang/Object;
.source "DualSimInfoManagerWrapper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionInfoComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiui/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 95
    check-cast p1, Lmiui/telephony/SubscriptionInfo;

    check-cast p2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1, p2}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SubscriptionInfoComparable;->compare(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I

    move-result p1

    return p1
.end method

.method public blacklist compare(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I
    .registers 5
    .param p1, "sim1"    # Lmiui/telephony/SubscriptionInfo;
    .param p2, "sim2"    # Lmiui/telephony/SubscriptionInfo;

    .line 98
    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
