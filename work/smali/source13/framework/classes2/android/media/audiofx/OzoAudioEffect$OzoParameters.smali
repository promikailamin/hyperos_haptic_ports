.class public final Landroid/media/audiofx/OzoAudioEffect$OzoParameters;
.super Ljava/lang/Object;
.source "OzoAudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/OzoAudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OzoParameters"
.end annotation


# static fields
.field public static final blacklist DISABLED:Ljava/lang/String; = "off"

.field public static final blacklist ENABLED:Ljava/lang/String; = "on"

.field public static final blacklist FEAT_CUSTOM:Ljava/lang/String; = "custom"

.field public static final blacklist FEAT_FOCUS:Ljava/lang/String; = "focus"

.field public static final blacklist FEAT_FOCUSAZIMUTH:Ljava/lang/String; = "focus-azimuth"

.field public static final blacklist FEAT_FOCUSELEVATION:Ljava/lang/String; = "focus-elevation"

.field public static final blacklist FEAT_FOCUSHEIGHT:Ljava/lang/String; = "focus-height"

.field public static final blacklist FEAT_FOCUSWIDTH:Ljava/lang/String; = "focus-width"

.field public static final blacklist FEAT_NOISESUPPRESSION:Ljava/lang/String; = "ns"

.field public static final blacklist FEAT_WINDSCREEN:Ljava/lang/String; = "wnr"

.field public static final blacklist FEAT_ZOOM:Ljava/lang/String; = "zoom"

.field public static final blacklist NS_SMART:Ljava/lang/String; = "smart"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
