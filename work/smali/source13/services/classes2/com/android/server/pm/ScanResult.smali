.class final Lcom/android/server/pm/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"


# instance fields
.field public final mChangedAbiCodePath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDynamicSharedLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mExistingSettingCopied:Z

.field public final mPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mPreviousAppId:I

.field public final mRequest:Lcom/android/server/pm/ScanRequest;

.field public final mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

.field public final mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

.field public final mSuccess:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/ScanRequest;ZLcom/android/server/pm/PackageSetting;Ljava/util/List;ZILandroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V
    .registers 11
    .param p1, "request"    # Lcom/android/server/pm/ScanRequest;
    .param p2, "success"    # Z
    .param p3, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p5, "existingSettingCopied"    # Z
    .param p6, "previousAppId"    # I
    .param p7, "sdkSharedLibraryInfo"    # Landroid/content/pm/SharedLibraryInfo;
    .param p8, "staticSharedLibraryInfo"    # Landroid/content/pm/SharedLibraryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ScanRequest;",
            "Z",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI",
            "Landroid/content/pm/SharedLibraryInfo;",
            "Landroid/content/pm/SharedLibraryInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p4, "changedAbiCodePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "dynamicSharedLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 69
    iput-boolean p2, p0, Lcom/android/server/pm/ScanResult;->mSuccess:Z

    .line 70
    iput-object p3, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 71
    iput-object p4, p0, Lcom/android/server/pm/ScanResult;->mChangedAbiCodePath:Ljava/util/List;

    .line 72
    iput-boolean p5, p0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    .line 76
    iput-object p7, p0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 77
    iput-object p8, p0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 78
    iput-object p9, p0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    .line 79
    return-void
.end method


# virtual methods
.method public needsNewAppId()Z
    .registers 3

    .line 86
    iget v0, p0, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
