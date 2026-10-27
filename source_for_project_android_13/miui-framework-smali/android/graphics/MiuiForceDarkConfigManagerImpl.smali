.class public Landroid/graphics/MiuiForceDarkConfigManagerImpl;
.super Ljava/lang/Object;
.source "MiuiForceDarkConfigManagerImpl.java"

# interfaces
.implements Landroid/graphics/MiuiForceDarkConfigManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/MiuiForceDarkConfigManagerImpl$MiuiForceDarkConfigManagerInstance;
    }
.end annotation


# instance fields
.field private blacklist mMainRule:I

.field private blacklist mPtr:J

.field private blacklist mSecondaryRule:I

.field private blacklist mTertiaryRule:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    const-string v0, "forcedarkimpl"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->mPtr:J

    .line 31
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/MiuiForceDarkConfigManagerImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/graphics/MiuiForceDarkConfigManagerImpl;
    .registers 1

    .line 37
    invoke-static {}, Landroid/graphics/MiuiForceDarkConfigManagerImpl$MiuiForceDarkConfigManagerInstance;->-$$Nest$sfgetsInstance()Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist initNative()V
    .registers 3

    .line 41
    invoke-static {p0}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->nativeInit(Landroid/graphics/MiuiForceDarkConfigManagerImpl;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->mPtr:J

    .line 42
    return-void
.end method

.method private static native blacklist nativeInit(Landroid/graphics/MiuiForceDarkConfigManagerImpl;)J
.end method

.method private static native blacklist nativeSetConfig(JFIII)V
.end method


# virtual methods
.method public blacklist getMainRule()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->mMainRule:I

    return v0
.end method

.method public blacklist getSecondaryRule()I
    .registers 2

    .line 71
    iget v0, p0, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->mSecondaryRule:I

    return v0
.end method

.method public blacklist getTertiaryRule()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->mTertiaryRule:I

    return v0
.end method

.method public blacklist setConfig(FIII)V
    .registers 12
    .param p1, "density"    # F
    .param p2, "mainRule"    # I
    .param p3, "secondaryRule"    # I
    .param p4, "tertiaryRule"    # I

    .line 49
    iget-wide v0, p0, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->mPtr:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 50
    invoke-direct {p0}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->initNative()V

    .line 52
    :cond_b
    iput p2, p0, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->mMainRule:I

    .line 53
    iput p3, p0, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->mSecondaryRule:I

    .line 54
    iput p4, p0, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->mTertiaryRule:I

    .line 55
    iget-wide v1, p0, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->mPtr:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;->nativeSetConfig(JFIII)V

    .line 56
    return-void
.end method
