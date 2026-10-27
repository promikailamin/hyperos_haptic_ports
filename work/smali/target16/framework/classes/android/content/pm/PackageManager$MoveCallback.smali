.class public abstract Landroid/content/pm/PackageManager$MoveCallback;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MoveCallback"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 10570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onCreated(ILandroid/os/Bundle;)V
    .registers 3

    .line 10571
    return-void
.end method

.method public abstract greylist-max-o onStatusChanged(IIJ)V
.end method
