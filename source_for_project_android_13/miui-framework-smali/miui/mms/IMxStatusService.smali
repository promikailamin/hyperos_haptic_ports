.class public interface abstract Lmiui/mms/IMxStatusService;
.super Ljava/lang/Object;
.source "IMxStatusService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mms/IMxStatusService$Stub;,
        Lmiui/mms/IMxStatusService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.mms.IMxStatusService"


# virtual methods
.method public abstract blacklist isMxOnline(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
