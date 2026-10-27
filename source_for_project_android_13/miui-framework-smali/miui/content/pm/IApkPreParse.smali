.class public interface abstract Lmiui/content/pm/IApkPreParse;
.super Ljava/lang/Object;
.source "IApkPreParse.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/IApkPreParse$Stub;,
        Lmiui/content/pm/IApkPreParse$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.content.pm.IApkPreParse"


# virtual methods
.method public abstract blacklist preParseApk(Ljava/lang/String;)Lmiui/content/pm/ApkPreParse$ParseApkResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removePreParseApkResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
