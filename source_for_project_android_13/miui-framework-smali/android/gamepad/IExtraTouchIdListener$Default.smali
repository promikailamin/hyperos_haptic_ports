.class public Landroid/gamepad/IExtraTouchIdListener$Default;
.super Ljava/lang/Object;
.source "IExtraTouchIdListener.java"

# interfaces
.implements Landroid/gamepad/IExtraTouchIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamepad/IExtraTouchIdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method
