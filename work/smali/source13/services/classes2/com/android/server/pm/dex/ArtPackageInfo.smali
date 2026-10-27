.class public Lcom/android/server/pm/dex/ArtPackageInfo;
.super Ljava/lang/Object;
.source "ArtPackageInfo.java"


# instance fields
.field private final mCodePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstructionSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOatDir:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p4, "oatDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    .local p2, "instructionSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mPackageName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mInstructionSets:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mCodePaths:Ljava/util/List;

    .line 40
    iput-object p4, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mOatDir:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getCodePaths()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mCodePaths:Ljava/util/List;

    return-object v0
.end method

.method public getInstructionSets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mInstructionSets:Ljava/util/List;

    return-object v0
.end method

.method public getOatDir()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mOatDir:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/server/pm/dex/ArtPackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
