.class public interface abstract Lmiui/webview/IMiuiWebViewManager;
.super Ljava/lang/Object;
.source "IMiuiWebViewManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/webview/IMiuiWebViewManager$Stub;,
        Lmiui/webview/IMiuiWebViewManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.webview.IMiuiWebViewManager"


# virtual methods
.method public abstract blacklist restartWebViewProcesses()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
