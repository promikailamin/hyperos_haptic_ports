.class Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;
.super Ljava/lang/Object;
.source "LocaleManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locales/LocaleManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StagedData"
.end annotation


# instance fields
.field final mCreationTimeMillis:J

.field final mPackageStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/util/HashMap;)V
    .registers 4
    .param p1, "creationTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 399
    .local p3, "pkgStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-wide p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mCreationTimeMillis:J

    .line 401
    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    .line 402
    return-void
.end method
