.class public final Landroid/provider/MiuiSettings$MiuiVoip;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MiuiVoip"
.end annotation


# static fields
.field private static final blacklist MIUI_VOIP_ACTIVATED:Ljava/lang/String; = "miui_voip_activated"

.field private static final blacklist MIUI_VOIP_CALLLOG_AUTO:Ljava/lang/String; = "miui_voip_calllog_auto"

.field private static final blacklist MIUI_VOIP_CONTACT_COUNT:Ljava/lang/String; = "miui_voip_contact_count"

.field private static final blacklist MIUI_VOIP_ENABLED:Ljava/lang/String; = "miui_voip_enabled"

.field private static final blacklist MIUI_VOIP_NEW_CONTACT_COUNT:Ljava/lang/String; = "miui_voip_new_contact_count"

.field private static final blacklist MIUI_VOIP_WIFI_AUTO:Ljava/lang/String; = "miui_voip_wifi_auto"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getVoipContactCount(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 6713
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_contact_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/ExtraSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getVoipNewContactCount(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 6721
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_new_contact_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/ExtraSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist isVoipActivated(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 6677
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_activated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVoipCallLogAuto(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 6701
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_calllog_auto"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVoipEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 6685
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isVoipWifiAuto(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 6693
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_wifi_auto"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist setVoipActivated(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isActivated"    # Z

    .line 6681
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_activated"

    invoke-static {v0, v1, p1}, Lmiui/util/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6682
    return-void
.end method

.method public static blacklist setVoipCallLogAuto(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 6705
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_calllog_auto"

    invoke-static {v0, v1, p1}, Lmiui/util/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6706
    return-void
.end method

.method public static blacklist setVoipContactCount(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I

    .line 6709
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_contact_count"

    invoke-static {v0, v1, p1}, Lmiui/util/ExtraSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6710
    return-void
.end method

.method public static blacklist setVoipEnabled(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 6689
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_enabled"

    invoke-static {v0, v1, p1}, Lmiui/util/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6690
    return-void
.end method

.method public static blacklist setVoipNewContactCount(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I

    .line 6717
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_new_contact_count"

    invoke-static {v0, v1, p1}, Lmiui/util/ExtraSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6718
    return-void
.end method

.method public static blacklist setVoipWifiAuto(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 6697
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_voip_wifi_auto"

    invoke-static {v0, v1, p1}, Lmiui/util/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 6698
    return-void
.end method
