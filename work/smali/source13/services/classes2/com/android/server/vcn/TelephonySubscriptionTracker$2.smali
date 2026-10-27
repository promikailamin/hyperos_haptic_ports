.class Lcom/android/server/vcn/TelephonySubscriptionTracker$2;
.super Ljava/lang/Object;
.source "TelephonySubscriptionTracker.java"

# interfaces
.implements Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vcn/TelephonySubscriptionTracker;->registerCarrierPrivilegesCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/TelephonySubscriptionTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 170
    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$2;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "privilegedPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "privilegedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$2;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-virtual {v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 179
    return-void
.end method
