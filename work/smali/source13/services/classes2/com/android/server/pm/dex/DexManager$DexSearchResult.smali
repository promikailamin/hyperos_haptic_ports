.class Lcom/android/server/pm/dex/DexManager$DexSearchResult;
.super Ljava/lang/Object;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/DexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexSearchResult"
.end annotation


# instance fields
.field private mOutcome:I

.field private mOwningPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/dex/DexManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOutcome(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOwningPackageName(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V
    .registers 4
    .param p2, "owningPackageName"    # Ljava/lang/String;
    .param p3, "outcome"    # I

    .line 1213
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->this$0:Lcom/android/server/pm/dex/DexManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;

    .line 1215
    iput p3, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I

    .line 1216
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
