.class Landroid/graphics/MiuiForceDarkConfigManagerImpl$MiuiForceDarkConfigManagerInstance;
.super Ljava/lang/Object;
.source "MiuiForceDarkConfigManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/MiuiForceDarkConfigManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiForceDarkConfigManagerInstance"
.end annotation


# static fields
.field private static final blacklist sInstance:Landroid/graphics/MiuiForceDarkConfigManagerImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsInstance()Landroid/graphics/MiuiForceDarkConfigManagerImpl;
    .registers 1

    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerImpl$MiuiForceDarkConfigManagerInstance;->sInstance:Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/MiuiForceDarkConfigManagerImpl;-><init>(Landroid/graphics/MiuiForceDarkConfigManagerImpl-IA;)V

    sput-object v0, Landroid/graphics/MiuiForceDarkConfigManagerImpl$MiuiForceDarkConfigManagerInstance;->sInstance:Landroid/graphics/MiuiForceDarkConfigManagerImpl;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
