.class public Lmiui/provider/SettingsStringUtil;
.super Ljava/lang/Object;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/SettingsStringUtil$SettingStringHelper;,
        Lmiui/provider/SettingsStringUtil$ComponentNameSet;,
        Lmiui/provider/SettingsStringUtil$ColonDelimitedSet;
    }
.end annotation


# static fields
.field public static final blacklist DELIMITER:Ljava/lang/String; = ":"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
