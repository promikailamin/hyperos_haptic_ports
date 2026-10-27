.class final Lcom/android/server/pm/PackageInstalledInfo;
.super Ljava/lang/Object;
.source "PackageInstalledInfo.java"


# instance fields
.field private mCollectingCerts:I

.field private mDexopt:I

.field private mExtractNativeLib:I

.field private mFileCopying:I

.field mFreezer:Lcom/android/server/pm/PackageFreezer;

.field private mGoogleVerification:I

.field mInstallerPackageName:Ljava/lang/String;

.field mLibraryConsumers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mMiuiVerification:I

.field mName:Ljava/lang/String;

.field mNewUsers:[I

.field mOrigPackage:Ljava/lang/String;

.field mOrigPermission:Ljava/lang/String;

.field mOrigUsers:[I

.field mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field mReturnCode:I

.field mReturnMsg:Ljava/lang/String;

.field private mTotal:I

.field mUid:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "currentStatus"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mFileCopying:I

    .line 47
    iput v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mCollectingCerts:I

    .line 48
    iput v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mMiuiVerification:I

    .line 49
    iput v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mGoogleVerification:I

    .line 50
    iput v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mDexopt:I

    .line 51
    iput v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mTotal:I

    .line 52
    iput v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mExtractNativeLib:I

    .line 116
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mUid:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 119
    iput-object v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 120
    return-void
.end method

.method private setReturnMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "returnMsg"    # Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnMsg:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method getCollectingCerts()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mCollectingCerts:I

    return v0
.end method

.method getDexopt()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mDexopt:I

    return v0
.end method

.method getExtractNativeLib()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mExtractNativeLib:I

    return v0
.end method

.method getFileCopying()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mFileCopying:I

    return v0
.end method

.method getGoogleVerification()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mGoogleVerification:I

    return v0
.end method

.method getMiuiVerification()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mMiuiVerification:I

    return v0
.end method

.method getTotal()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mTotal:I

    return v0
.end method

.method setCollectingCerts(I)V
    .registers 2
    .param p1, "collectingCerts"    # I

    .line 67
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mCollectingCerts:I

    .line 68
    return-void
.end method

.method setDexopt(I)V
    .registers 2
    .param p1, "dexopt"    # I

    .line 91
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mDexopt:I

    .line 92
    return-void
.end method

.method public setError(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnCode(I)V

    .line 124
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 125
    const-string v0, "PackageManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/android/server/pm/PackageManagerException;

    .line 129
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    .line 130
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 131
    const-string v0, "PackageManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    return-void
.end method

.method setExtractNativeLib(I)V
    .registers 2
    .param p1, "extractNativeLib"    # I

    .line 107
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mExtractNativeLib:I

    .line 108
    return-void
.end method

.method setFileCopying(I)V
    .registers 2
    .param p1, "fileCopying"    # I

    .line 59
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mFileCopying:I

    .line 60
    return-void
.end method

.method setGoogleVerification(I)V
    .registers 2
    .param p1, "googleVerification"    # I

    .line 83
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mGoogleVerification:I

    .line 84
    return-void
.end method

.method setMiuiVerification(I)V
    .registers 2
    .param p1, "miuiVerification"    # I

    .line 75
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mMiuiVerification:I

    .line 76
    return-void
.end method

.method public setReturnCode(I)V
    .registers 2
    .param p1, "returnCode"    # I

    .line 135
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    .line 136
    return-void
.end method

.method setTotal(I)V
    .registers 2
    .param p1, "total"    # I

    .line 99
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mTotal:I

    .line 100
    return-void
.end method
