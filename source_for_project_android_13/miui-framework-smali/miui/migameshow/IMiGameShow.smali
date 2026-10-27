.class public interface abstract Lmiui/migameshow/IMiGameShow;
.super Ljava/lang/Object;
.source "IMiGameShow.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/migameshow/IMiGameShow$Stub;,
        Lmiui/migameshow/IMiGameShow$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.migameshow.IMiGameShow"


# virtual methods
.method public abstract blacklist finishAndRemoveSplashScreen(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
