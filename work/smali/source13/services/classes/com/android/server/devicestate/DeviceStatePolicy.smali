.class public abstract Lcom/android/server/devicestate/DeviceStatePolicy;
.super Ljava/lang/Object;
.source "DeviceStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/DeviceStatePolicy$Provider;,
        Lcom/android/server/devicestate/DeviceStatePolicy$DefaultProvider;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStatePolicy;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public abstract configureDeviceForState(ILjava/lang/Runnable;)V
.end method

.method public abstract getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;
.end method
