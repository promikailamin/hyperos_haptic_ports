.class public Lcom/oplus/theme/OplusThemeUtil;
.super Ljava/lang/Object;
.source "OplusThemeUtil.java"


# static fields
.field public static greylist CUSTOM_THEME_PATH:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 8
    const-string v0, "/data/theme/com.oplus.camera"

    sput-object v0, Lcom/oplus/theme/OplusThemeUtil;->CUSTOM_THEME_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
