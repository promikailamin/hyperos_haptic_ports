.class public Landroid/media/effect/EffectFactory;
.super Ljava/lang/Object;
.source "EffectFactory.java"


# static fields
.field public static final whitelist EFFECT_AUTOFIX:Ljava/lang/String; = "android.media.effect.effects.AutoFixEffect"

.field public static final whitelist EFFECT_BACKDROPPER:Ljava/lang/String; = "android.media.effect.effects.BackDropperEffect"

.field public static final whitelist EFFECT_BITMAPOVERLAY:Ljava/lang/String; = "android.media.effect.effects.BitmapOverlayEffect"

.field public static final whitelist EFFECT_BLACKWHITE:Ljava/lang/String; = "android.media.effect.effects.BlackWhiteEffect"

.field public static final whitelist EFFECT_BRIGHTNESS:Ljava/lang/String; = "android.media.effect.effects.BrightnessEffect"

.field public static final whitelist EFFECT_CONTRAST:Ljava/lang/String; = "android.media.effect.effects.ContrastEffect"

.field public static final whitelist EFFECT_CROP:Ljava/lang/String; = "android.media.effect.effects.CropEffect"

.field public static final whitelist EFFECT_CROSSPROCESS:Ljava/lang/String; = "android.media.effect.effects.CrossProcessEffect"

.field public static final whitelist EFFECT_DOCUMENTARY:Ljava/lang/String; = "android.media.effect.effects.DocumentaryEffect"

.field public static final whitelist EFFECT_DUOTONE:Ljava/lang/String; = "android.media.effect.effects.DuotoneEffect"

.field public static final whitelist EFFECT_FILLLIGHT:Ljava/lang/String; = "android.media.effect.effects.FillLightEffect"

.field public static final whitelist EFFECT_FISHEYE:Ljava/lang/String; = "android.media.effect.effects.FisheyeEffect"

.field public static final whitelist EFFECT_FLIP:Ljava/lang/String; = "android.media.effect.effects.FlipEffect"

.field public static final whitelist EFFECT_GRAIN:Ljava/lang/String; = "android.media.effect.effects.GrainEffect"

.field public static final whitelist EFFECT_GRAYSCALE:Ljava/lang/String; = "android.media.effect.effects.GrayscaleEffect"

.field public static final greylist-max-o EFFECT_IDENTITY:Ljava/lang/String; = "IdentityEffect"

.field public static final whitelist EFFECT_LOMOISH:Ljava/lang/String; = "android.media.effect.effects.LomoishEffect"

.field public static final whitelist EFFECT_NEGATIVE:Ljava/lang/String; = "android.media.effect.effects.NegativeEffect"

.field private static final greylist-max-o EFFECT_PACKAGES:[Ljava/lang/String;

.field public static final whitelist EFFECT_POSTERIZE:Ljava/lang/String; = "android.media.effect.effects.PosterizeEffect"

.field public static final whitelist EFFECT_REDEYE:Ljava/lang/String; = "android.media.effect.effects.RedEyeEffect"

.field public static final whitelist EFFECT_ROTATE:Ljava/lang/String; = "android.media.effect.effects.RotateEffect"

.field public static final whitelist EFFECT_SATURATE:Ljava/lang/String; = "android.media.effect.effects.SaturateEffect"

.field public static final whitelist EFFECT_SEPIA:Ljava/lang/String; = "android.media.effect.effects.SepiaEffect"

.field public static final whitelist EFFECT_SHARPEN:Ljava/lang/String; = "android.media.effect.effects.SharpenEffect"

.field public static final whitelist EFFECT_STRAIGHTEN:Ljava/lang/String; = "android.media.effect.effects.StraightenEffect"

.field public static final whitelist EFFECT_TEMPERATURE:Ljava/lang/String; = "android.media.effect.effects.ColorTemperatureEffect"

.field public static final whitelist EFFECT_TINT:Ljava/lang/String; = "android.media.effect.effects.TintEffect"

.field public static final whitelist EFFECT_VIGNETTE:Ljava/lang/String; = "android.media.effect.effects.VignetteEffect"


# instance fields
.field private greylist-max-o mEffectContext:Landroid/media/effect/EffectContext;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 32
    const-string v0, "android.media.effect.effects."

    const-string v1, ""

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/effect/EffectFactory;->EFFECT_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/media/effect/EffectContext;)V
    .registers 2

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Landroid/media/effect/EffectFactory;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 427
    return-void
.end method

.method private static greylist-max-o getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 8

    .line 467
    nop

    .line 470
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 473
    sget-object v1, Landroid/media/effect/EffectFactory;->EFFECT_PACKAGES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_30

    aget-object v5, v1, v4

    .line 475
    :try_start_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_27} :catch_2b

    .line 478
    nop

    .line 480
    if-eqz v3, :cond_2d

    .line 481
    goto :goto_30

    .line 476
    :catch_2b
    move-exception v5

    .line 477
    nop

    .line 473
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 484
    :cond_30
    :goto_30
    return-object v3
.end method

.method private greylist-max-o instantiateEffect(Ljava/lang/Class;Ljava/lang/String;)Landroid/media/effect/Effect;
    .registers 6

    .line 489
    const-class v0, Landroid/media/effect/Effect;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 495
    nop

    .line 497
    const/4 v0, 0x2

    :try_start_a
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/media/effect/EffectContext;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1a} :catch_4a

    .line 501
    nop

    .line 504
    nop

    .line 506
    :try_start_1c
    iget-object v1, p0, Landroid/media/effect/EffectFactory;->mEffectContext:Landroid/media/effect/EffectContext;

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/effect/Effect;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2a

    .line 510
    nop

    .line 512
    return-object p2

    .line 507
    :catchall_2a
    move-exception p2

    .line 508
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was an error constructing the effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 498
    :catch_4a
    move-exception p2

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The effect class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' does not have the required constructor."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 490
    :cond_6a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to allocate effect \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' which is not a subclass of Effect!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static whitelist isEffectSupported(Ljava/lang/String;)Z
    .registers 1

    .line 463
    invoke-static {p0}, Landroid/media/effect/EffectFactory;->getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public whitelist createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;
    .registers 5

    .line 444
    invoke-static {p1}, Landroid/media/effect/EffectFactory;->getEffectClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_b

    .line 449
    invoke-direct {p0, v0, p1}, Landroid/media/effect/EffectFactory;->instantiateEffect(Ljava/lang/Class;Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object p1

    return-object p1

    .line 446
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate unknown effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
