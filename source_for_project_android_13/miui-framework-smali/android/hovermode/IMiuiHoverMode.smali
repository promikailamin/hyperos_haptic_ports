.class public interface abstract Landroid/hovermode/IMiuiHoverMode;
.super Ljava/lang/Object;
.source "IMiuiHoverMode.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hovermode/IMiuiHoverMode$Stub;,
        Landroid/hovermode/IMiuiHoverMode$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hovermode.IMiuiHoverMode"


# virtual methods
.method public abstract blacklist getMiuiHoverModeApps()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hovermode/HoverModeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist inMiuiHoverEnableList(Landroid/content/ComponentName;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
