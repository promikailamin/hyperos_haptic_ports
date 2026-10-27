.class public interface abstract Lcom/miui/whetstone/IWhetstoneSysInfoService;
.super Ljava/lang/Object;
.source "IWhetstoneSysInfoService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IWhetstoneSysInfoService$Stub;,
        Lcom/miui/whetstone/IWhetstoneSysInfoService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IWhetstoneSysInfoService"


# virtual methods
.method public abstract blacklist getSysInfo(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSysInfos([Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
