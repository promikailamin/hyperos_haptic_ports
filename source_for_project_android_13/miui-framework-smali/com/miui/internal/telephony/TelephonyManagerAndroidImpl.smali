.class public Lcom/miui/internal/telephony/TelephonyManagerAndroidImpl;
.super Ljava/lang/Object;
.source "TelephonyManagerAndroidImpl.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "TelephonyAndroidImpl"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static blacklist getDefault()Lmiui/telephony/TelephonyManager;
    .registers 2

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    .line 27
    new-instance v0, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api26TelephonyManagerImpl;-><init>()V

    return-object v0

    .line 28
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_18

    .line 29
    new-instance v0, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api24TelephonyManagerImpl;-><init>()V

    return-object v0

    .line 30
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_24

    .line 31
    new-instance v0, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api23TelephonyManagerImpl;-><init>()V

    return-object v0

    .line 32
    :cond_24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_30

    .line 33
    new-instance v0, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api22TelephonyManagerImpl;-><init>()V

    return-object v0

    .line 34
    :cond_30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3c

    .line 35
    new-instance v0, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/Api21TelephonyManagerImpl;-><init>()V

    return-object v0

    .line 37
    :cond_3c
    new-instance v0, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;

    invoke-direct {v0}, Lcom/miui/internal/telephony/BaseTelephonyManagerAndroidImpl;-><init>()V

    return-object v0
.end method
