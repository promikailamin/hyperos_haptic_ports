.class Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;
.super Ljava/lang/Object;
.source "DualSimInfoManagerWrapper.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimInfoChangeImpl"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 1

    .line 53
    invoke-static {}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->-$$Nest$smbroadcastSubscriptionsChanged()V

    .line 54
    return-void
.end method
