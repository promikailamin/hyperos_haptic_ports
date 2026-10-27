.class public Landroid/os/statistics/BinderSuperviser;
.super Ljava/lang/Object;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;,
        Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;,
        Landroid/os/statistics/BinderSuperviser$SingleBinderCall;,
        Landroid/os/statistics/BinderSuperviser$BinderCallFields;,
        Landroid/os/statistics/BinderSuperviser$BinderStarvation;,
        Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;,
        Landroid/os/statistics/BinderSuperviser$BinderWrapper;
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/os/statistics/BinderSuperviser;->getInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "binder"    # Ljava/lang/Object;

    .line 314
    const/4 v0, 0x0

    .line 316
    .local v0, "interfaceDescriptor":Ljava/lang/String;
    :try_start_1
    instance-of v1, p0, Landroid/os/statistics/BinderSuperviser$BinderWrapper;

    if-eqz v1, :cond_e

    .line 317
    move-object v1, p0

    check-cast v1, Landroid/os/statistics/BinderSuperviser$BinderWrapper;

    invoke-virtual {v1}, Landroid/os/statistics/BinderSuperviser$BinderWrapper;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_1a

    .line 318
    :cond_e
    instance-of v1, p0, Landroid/os/IBinder;

    if-eqz v1, :cond_1a

    .line 319
    move-object v1, p0

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1b

    move-object v0, v1

    .line 322
    :cond_1a
    :goto_1a
    goto :goto_1c

    .line 321
    :catch_1b
    move-exception v1

    .line 323
    :goto_1c
    if-nez v0, :cond_21

    const-string v1, ""

    goto :goto_22

    :cond_21
    move-object v1, v0

    :goto_22
    return-object v1
.end method
