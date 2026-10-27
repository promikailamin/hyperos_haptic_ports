.class final Landroid/os/statistics/BinderSuperviser$BinderWrapper;
.super Ljava/lang/Object;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BinderWrapper"
.end annotation


# instance fields
.field private blacklist mObject:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private final native blacklist destroy()V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    :try_start_0
    invoke-direct {p0}, Landroid/os/statistics/BinderSuperviser$BinderWrapper;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 28
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 29
    nop

    .line 30
    return-void

    .line 28
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 29
    throw v0
.end method

.method public native blacklist getInterfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
