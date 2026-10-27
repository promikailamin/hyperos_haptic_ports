.class final Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
.super Ljava/lang/Object;
.source "UpdatableFontDir.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/graphics/fonts/UpdatableFontDir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FontFileInfo"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mPsName:Ljava/lang/String;

.field private final mRevision:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmFile(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    return-object p0
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "psName"    # Ljava/lang/String;
    .param p3, "revision"    # J

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    .line 90
    iput-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mPsName:Ljava/lang/String;

    .line 91
    iput-wide p3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mRevision:J

    .line 92
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getPostScriptName()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mPsName:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomizedFontDir()Ljava/io/File;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getRevision()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mRevision:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontFileInfo{mFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", psName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mPsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRevision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mRevision:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
