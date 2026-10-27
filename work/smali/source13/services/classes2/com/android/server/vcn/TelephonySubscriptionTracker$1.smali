.class Lcom/android/server/vcn/TelephonySubscriptionTracker$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "TelephonySubscriptionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vcn/TelephonySubscriptionTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;)V
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

    .line 136
    iput-object p1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker$1;->this$0:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-virtual {v0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 140
    return-void
.end method
