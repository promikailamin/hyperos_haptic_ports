.class public abstract Lcom/android/server/notification/ZenModeHelper$Callback;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 0
    return-void
.end method

.method public abstract onConfigChanged()V
.end method

.method public onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract onZenModeChanged()V
.end method
