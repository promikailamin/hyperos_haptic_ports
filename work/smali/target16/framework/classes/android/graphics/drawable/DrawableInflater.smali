.class public final Landroid/graphics/drawable/DrawableInflater;
.super Ljava/lang/Object;
.source "DrawableInflater.java"


# static fields
.field private static final greylist-max-o CONSTRUCTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-r mClassLoader:Ljava/lang/ClassLoader;

.field private final greylist-max-o mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Ljava/lang/ClassLoader;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    .line 92
    iput-object p2, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    .line 93
    return-void
.end method

.method private greylist-max-o inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 197
    :try_start_0
    sget-object v0, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3} :catch_89
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_32

    .line 198
    :try_start_3
    sget-object v1, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 199
    const/4 v2, 0x0

    if-nez v1, :cond_25

    .line 200
    iget-object v1, p0, Landroid/graphics/drawable/DrawableInflater;->mClassLoader:Ljava/lang/ClassLoader;

    .line 201
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 202
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 203
    sget-object v3, Landroid/graphics/drawable/DrawableInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2f

    .line 206
    :try_start_26
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_26 .. :try_end_2e} :catch_89
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_2e} :catch_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_2e} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_32

    return-object v0

    .line 205
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_31 .. :try_end_32} :catch_89
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_32} :catch_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_32} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32

    .line 224
    :catch_32
    move-exception v0

    .line 225
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 228
    throw v1

    .line 218
    :catch_4f
    move-exception v0

    .line 220
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 223
    throw v1

    .line 212
    :catch_6c
    move-exception v0

    .line 214
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class is not a Drawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 217
    throw v1

    .line 207
    :catch_89
    move-exception v0

    .line 208
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 211
    throw v1
.end method

.method private greylist-max-o inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_170

    :cond_7
    goto/16 :goto_f1

    :sswitch_9
    const-string v0, "animated-vector"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xa

    goto/16 :goto_f2

    :sswitch_15
    const-string v0, "animated-rotate"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xe

    goto/16 :goto_f2

    :sswitch_21
    const-string v0, "animated-image"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x13

    goto/16 :goto_f2

    :sswitch_2d
    const-string/jumbo v0, "selector"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto/16 :goto_f2

    :sswitch_39
    const-string/jumbo v0, "level-list"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    goto/16 :goto_f2

    :sswitch_45
    const-string/jumbo v0, "shape"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    goto/16 :goto_f2

    :sswitch_52
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xb

    goto/16 :goto_f2

    :sswitch_5f
    const-string v0, "inset"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x10

    goto/16 :goto_f2

    :sswitch_6b
    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x7

    goto/16 :goto_f2

    :sswitch_76
    const-string v0, "clip"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xc

    goto/16 :goto_f2

    :sswitch_82
    const-string/jumbo v0, "layer-list"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    goto :goto_f2

    :sswitch_8d
    const-string v0, "animated-selector"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_f2

    :sswitch_97
    const-string/jumbo v0, "vector"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x9

    goto :goto_f2

    :sswitch_a3
    const-string/jumbo v0, "rotate"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xd

    goto :goto_f2

    :sswitch_af
    const-string/jumbo v0, "ripple"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x5

    goto :goto_f2

    :sswitch_ba
    const-string v0, "bitmap"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x11

    goto :goto_f2

    :sswitch_c5
    const-string v0, "animation-list"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xf

    goto :goto_f2

    :sswitch_d0
    const-string/jumbo v0, "nine-patch"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x12

    goto :goto_f2

    :sswitch_dc
    const-string/jumbo v0, "transition"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    goto :goto_f2

    :sswitch_e7
    const-string v0, "adaptive-icon"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x6

    goto :goto_f2

    :goto_f1
    const/4 p1, -0x1

    :goto_f2
    packed-switch p1, :pswitch_data_1c2

    .line 190
    const/4 p1, 0x0

    return-object p1

    .line 188
    :pswitch_f7
    new-instance p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;-><init>()V

    return-object p1

    .line 186
    :pswitch_fd
    new-instance p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    return-object p1

    .line 184
    :pswitch_103
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-object p1

    .line 182
    :pswitch_109
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    return-object p1

    .line 180
    :pswitch_10f
    new-instance p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    return-object p1

    .line 178
    :pswitch_115
    new-instance p1, Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    return-object p1

    .line 176
    :pswitch_11b
    new-instance p1, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    return-object p1

    .line 174
    :pswitch_121
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    return-object p1

    .line 172
    :pswitch_127
    new-instance p1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    return-object p1

    .line 170
    :pswitch_12d
    new-instance p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>()V

    return-object p1

    .line 168
    :pswitch_133
    new-instance p1, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    return-object p1

    .line 166
    :pswitch_139
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object p1

    .line 164
    :pswitch_13f
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    return-object p1

    .line 162
    :pswitch_145
    new-instance p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>()V

    return-object p1

    .line 160
    :pswitch_14b
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/RippleDrawable;-><init>()V

    return-object p1

    .line 158
    :pswitch_151
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    return-object p1

    .line 156
    :pswitch_157
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    return-object p1

    .line 154
    :pswitch_15d
    new-instance p1, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    return-object p1

    .line 152
    :pswitch_163
    new-instance p1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    return-object p1

    .line 150
    :pswitch_169
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    return-object p1

    nop

    :sswitch_data_170
    .sparse-switch
        -0x78aade90 -> :sswitch_e7
        -0x66c492ab -> :sswitch_dc
        -0x63a70093 -> :sswitch_d0
        -0x5905b6b9 -> :sswitch_c5
        -0x52c70ed1 -> :sswitch_ba
        -0x377b49d0 -> :sswitch_af
        -0x372522a5 -> :sswitch_a3
        -0x30e61ebd -> :sswitch_97
        -0x1e6b8b37 -> :sswitch_8d
        -0x59d5866 -> :sswitch_82
        0x2ea350 -> :sswitch_76
        0x5a72f63 -> :sswitch_6b
        0x5fb611d -> :sswitch_5f
        0x683094a -> :sswitch_52
        0x6854fa1 -> :sswitch_45
        0x993c947 -> :sswitch_39
        0x4705f3df -> :sswitch_2d
        0x55f3e0b1 -> :sswitch_21
        0x780890c5 -> :sswitch_15
        0x7e4794ad -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_169
        :pswitch_163
        :pswitch_15d
        :pswitch_157
        :pswitch_151
        :pswitch_14b
        :pswitch_145
        :pswitch_13f
        :pswitch_139
        :pswitch_133
        :pswitch_12d
        :pswitch_127
        :pswitch_121
        :pswitch_11b
        :pswitch_115
        :pswitch_10f
        :pswitch_109
        :pswitch_103
        :pswitch_fd
        :pswitch_f7
    .end packed-switch
.end method

.method public static greylist-max-o loadDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/graphics/drawable/DrawableInflater;->loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o loadDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 79
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist-max-o inflateFromXml(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/DrawableInflater;->inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o inflateFromXmlForDensity(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const-string v0, "drawable"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 131
    const/4 p1, 0x0

    const-string v0, "class"

    invoke-interface {p3, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    if-eqz p1, :cond_12

    goto :goto_1a

    .line 133
    :cond_12
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "<drawable> tag must specify class attribute"

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_1a
    :goto_1a
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromTag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    if-nez v0, :cond_24

    .line 139
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableInflater;->inflateFromClass(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    :cond_24
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setSrcDensityOverride(I)V

    .line 142
    iget-object p1, p0, Landroid/graphics/drawable/DrawableInflater;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3, p5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 143
    return-object v0
.end method
