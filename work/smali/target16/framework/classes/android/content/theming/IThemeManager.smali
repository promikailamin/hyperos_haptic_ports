.class public interface abstract Landroid/content/theming/IThemeManager;
.super Ljava/lang/Object;
.source "IThemeManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/theming/IThemeManager$Stub;,
        Landroid/content/theming/IThemeManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.theming.IThemeManager"


# virtual methods
.method public abstract blacklist getThemeSettings()Landroid/content/theming/ThemeSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getThemeSettingsOrDefault()Landroid/content/theming/ThemeSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerThemeSettingsCallback(Landroid/content/theming/IThemeSettingsCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterThemeSettingsCallback(Landroid/content/theming/IThemeSettingsCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateThemeSettings(Landroid/content/theming/ThemeSettings;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
