.class public Landroid/provider/SystemSettings;
.super Ljava/lang/Object;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SystemSettings$Secure;,
        Landroid/provider/SystemSettings$System;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SystemSettings"

.field private static final blacklist UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
