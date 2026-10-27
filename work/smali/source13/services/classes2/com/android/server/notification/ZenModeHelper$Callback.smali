.class public Lcom/android/server/notification/ZenModeHelper$Callback;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onAutomaticRuleStatusChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 1702
    return-void
.end method

.method onConfigChanged()V
    .registers 1

    .line 1698
    return-void
.end method

.method onConsolidatedPolicyChanged()V
    .registers 1

    .line 1701
    return-void
.end method

.method onPolicyChanged()V
    .registers 1

    .line 1700
    return-void
.end method

.method onZenModeChanged()V
    .registers 1

    .line 1699
    return-void
.end method
