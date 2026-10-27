.class public interface abstract Landroid/graphics/MiuiForceDarkConfigManager;
.super Ljava/lang/Object;
.source "MiuiForceDarkConfigManager.java"


# static fields
.field public static final blacklist FORCE_DARK_SPLASH_SCREEN_DEFAULT:I = 0x1

.field public static final blacklist FORCE_DARK_SPLASH_SCREEN_DISABLE:I = 0x2

.field public static final blacklist FORCE_DARK_SPLASH_SCREEN_ENABLE:I = 0x1

.field public static final blacklist FORCE_DARK_SPLASH_SCREEN_UNKNOWN:I = 0x0

.field public static final blacklist RULE_ALWAYS_ALLOW_FOR_TEXTVIEW:I = 0x8

.field public static final blacklist RULE_ALWAYS_ALLOW_FOR_VIEW:I = 0x80

.field public static final blacklist RULE_ALWAYS_LIGHT_TEXT:I = 0x10

.field public static final blacklist RULE_BACKGROUND_DRAWABLE:I = 0x4

.field public static final blacklist RULE_BITMAP_PALETTE_COMPUTION:I = 0x2

.field public static final blacklist RULE_DEPRECATED:I = 0x1

.field public static final blacklist RULE_DISABLE_FORCEDARK_FOR_WEBVIEW:I = 0x20

.field public static final blacklist RULE_FORCE_DARK_SOFTWARE:I = 0x200

.field public static final blacklist RULE_FORCE_TRANSPARENT:I = 0x10

.field public static final blacklist RULE_FOREGROUND_FOR_BACKGROUND_DRAWABLE:I = 0x40

.field public static final blacklist RULE_INVERT_EXCLUDE_BITMAP:I = 0x100

.field public static final blacklist RULE_NONE_ASSET_DRAWABLE_NO_FORCE_DARK:I = 0x400

.field public static final blacklist RULE_ONE_CHILD_WIDTH_HALF:I = 0x2

.field public static final blacklist RULE_ONE_CHILD_WIDTH_WHOLE:I = 0x1

.field public static final blacklist RULE_PLACEHOLDER_FOR_IMAGEVIEW:I = 0x40

.field public static final blacklist RULE_RES_LOADED_DRAWABLE:I = 0x20

.field public static final blacklist RULE_SKIP_FOR_UNKNOWN:I = 0x8

.field public static final blacklist RULE_ZERO_CHILD_EMPTY_VIEW:I = 0x4


# virtual methods
.method public abstract blacklist getMainRule()I
.end method

.method public abstract blacklist getSecondaryRule()I
.end method

.method public abstract blacklist getTertiaryRule()I
.end method

.method public abstract blacklist setConfig(FIII)V
.end method
