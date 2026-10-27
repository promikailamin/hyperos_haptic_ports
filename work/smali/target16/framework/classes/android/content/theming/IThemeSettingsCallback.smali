.class public interface abstract Landroid/content/theming/IThemeSettingsCallback;
.super Ljava/lang/Object;
.source "IThemeSettingsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/theming/IThemeSettingsCallback$Stub;,
        Landroid/content/theming/IThemeSettingsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.theming.IThemeSettingsCallback"


# virtual methods
.method public abstract blacklist onSettingsChanged(Landroid/content/theming/ThemeSettings;Landroid/content/theming/ThemeSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
