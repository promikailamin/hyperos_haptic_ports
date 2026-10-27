.class public interface abstract Lmiui/hardware/input/IShortcutSettingsChangedListener;
.super Ljava/lang/Object;
.source "IShortcutSettingsChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/input/IShortcutSettingsChangedListener$Stub;,
        Lmiui/hardware/input/IShortcutSettingsChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.hardware.input.IShortcutSettingsChangedListener"


# virtual methods
.method public abstract blacklist onSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
