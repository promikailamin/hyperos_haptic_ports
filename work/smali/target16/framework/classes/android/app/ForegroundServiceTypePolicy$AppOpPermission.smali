.class Landroid/app/ForegroundServiceTypePolicy$AppOpPermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppOpPermission"
.end annotation


# instance fields
.field final blacklist mOpCode:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3

    .line 1271
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 1272
    iput p1, p0, Landroid/app/ForegroundServiceTypePolicy$AppOpPermission;->mOpCode:I

    .line 1273
    return-void
.end method


# virtual methods
.method public blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 6

    .line 1279
    const-class p3, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    .line 1280
    iget p3, p0, Landroid/app/ForegroundServiceTypePolicy$AppOpPermission;->mOpCode:I

    invoke-virtual {p1, p3, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 1281
    if-eqz p1, :cond_18

    if-eqz p5, :cond_16

    const/4 p2, 0x4

    if-ne p1, p2, :cond_16

    goto :goto_18

    .line 1282
    :cond_16
    const/4 p1, -0x1

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p1, 0x0

    .line 1281
    :goto_19
    return p1
.end method
