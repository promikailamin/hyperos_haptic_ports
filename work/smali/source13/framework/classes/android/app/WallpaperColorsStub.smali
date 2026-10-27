.class public Landroid/app/WallpaperColorsStub;
.super Ljava/lang/Object;
.source "WallpaperColorsStub.java"


# static fields
.field private static final blacklist sInstance:Landroid/app/WallpaperColorsStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-class v0, Landroid/app/WallpaperColorsStub;

    .line 11
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColorsStub;

    sput-object v0, Landroid/app/WallpaperColorsStub;->sInstance:Landroid/app/WallpaperColorsStub;

    .line 10
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getInstance()Landroid/app/WallpaperColorsStub;
    .registers 1

    .line 14
    sget-object v0, Landroid/app/WallpaperColorsStub;->sInstance:Landroid/app/WallpaperColorsStub;

    return-object v0
.end method


# virtual methods
.method blacklist miuiCalculateDarkHints(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 18
    const/4 v0, 0x0

    return v0
.end method
