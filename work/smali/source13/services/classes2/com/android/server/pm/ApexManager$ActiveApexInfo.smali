.class public Lcom/android/server/pm/ApexManager$ActiveApexInfo;
.super Ljava/lang/Object;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ApexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveApexInfo"
.end annotation


# instance fields
.field public final activeApexChanged:Z

.field public final apexDirectory:Ljava/io/File;

.field public final apexFile:Ljava/io/File;

.field public final apexModuleName:Ljava/lang/String;

.field public final preInstalledApexPath:Ljava/io/File;


# direct methods
.method private constructor <init>(Landroid/apex/ApexInfo;)V
    .registers 8
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;

    .line 140
    iget-object v1, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v0, p1, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    iget-object v0, p1, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p1, Landroid/apex/ApexInfo;->activeApexChanged:Z

    .line 140
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/ApexManager$ActiveApexInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Landroid/apex/ApexInfo;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .param p1, "apexDirectory"    # Ljava/io/File;
    .param p2, "preInstalledApexPath"    # Ljava/io/File;
    .param p3, "apexFile"    # Ljava/io/File;

    .line 127
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/ApexManager$ActiveApexInfo-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V
    .registers 6
    .param p1, "apexModuleName"    # Ljava/lang/String;
    .param p2, "apexDirectory"    # Ljava/io/File;
    .param p3, "preInstalledApexPath"    # Ljava/io/File;
    .param p4, "apexFile"    # Ljava/io/File;
    .param p5, "activeApexChanged"    # Z

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    .line 134
    iput-object p3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 135
    iput-object p4, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexFile:Ljava/io/File;

    .line 136
    iput-boolean p5, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    .line 137
    return-void
.end method
