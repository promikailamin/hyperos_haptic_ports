.class public interface abstract Lcom/miui/autoui/IMiuiAutoUI;
.super Ljava/lang/Object;
.source "IMiuiAutoUI.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autoui/IMiuiAutoUI$Stub;,
        Lcom/miui/autoui/IMiuiAutoUI$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.autoui.IMiuiAutoUI"


# virtual methods
.method public abstract blacklist getAutoUIApps()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSystemAutoUIRules(Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setAutoUIAppEnable(Ljava/lang/String;ZZZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
