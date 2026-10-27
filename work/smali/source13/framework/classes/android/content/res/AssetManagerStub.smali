.class public Landroid/content/res/AssetManagerStub;
.super Ljava/lang/Object;
.source "AssetManagerStub.java"


# static fields
.field private static final blacklist sInstance:Landroid/content/res/AssetManagerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-class v0, Landroid/content/res/AssetManagerStub;

    .line 11
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManagerStub;

    sput-object v0, Landroid/content/res/AssetManagerStub;->sInstance:Landroid/content/res/AssetManagerStub;

    .line 10
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/content/res/AssetManagerStub;
    .registers 1

    .line 14
    sget-object v0, Landroid/content/res/AssetManagerStub;->sInstance:Landroid/content/res/AssetManagerStub;

    return-object v0
.end method


# virtual methods
.method blacklist addMiuiAssets(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/res/ApkAssets;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    .local p1, "apkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    return-void
.end method
