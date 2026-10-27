.class public interface abstract Lmiui/mms/IMxNetworkSMS;
.super Ljava/lang/Object;
.source "IMxNetworkSMS.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mms/IMxNetworkSMS$Stub;,
        Lmiui/mms/IMxNetworkSMS$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.mms.IMxNetworkSMS"


# virtual methods
.method public abstract blacklist isMxOnline(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendNetwokSMS(Ljava/lang/String;Ljava/lang/String;JZI)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
