.class public interface abstract Lmiui/hardware/ICldCallback;
.super Ljava/lang/Object;
.source "ICldCallback.java"

# interfaces
.implements Lmiui/android/internal/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/ICldCallback$Stub;
    }
.end annotation


# static fields
.field public static final blacklist kInterfaceName:Ljava/lang/String; = "vendor.xiaomi.hardware.cld@1.0::ICldCallback"


# virtual methods
.method public abstract blacklist notifyStatusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
