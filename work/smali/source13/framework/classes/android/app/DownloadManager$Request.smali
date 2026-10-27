.class public Landroid/app/DownloadManager$Request;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist INSTALL_WAY_MANUAL:I = 0x2

.field public static final blacklist INSTALL_WAY_NONE:I = 0x0

.field public static final blacklist INSTALL_WAY_SILENCE:I = 0x1

.field public static final greylist-max-o NETWORK_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_MOBILE:I = 0x1

.field public static final whitelist NETWORK_WIFI:I = 0x2

.field private static final greylist-max-o SCANNABLE_VALUE_NO:I = 0x2

.field private static final greylist-max-o SCANNABLE_VALUE_YES:I = 0x0

.field public static final whitelist VISIBILITY_HIDDEN:I = 0x2

.field public static final whitelist VISIBILITY_VISIBLE:I = 0x0

.field public static final whitelist VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field public static final whitelist VISIBILITY_VISIBLE_NOTIFY_ONLY_COMPLETION:I = 0x3


# instance fields
.field private greylist-max-o mAllowedNetworkTypes:I

.field private blacklist mApkPackageName:Ljava/lang/String;

.field private blacklist mAppointName:Ljava/lang/String;

.field private blacklist mBypassRecommendedSizeLimit:Z

.field private blacklist mColumnAppData:Ljava/lang/String;

.field private greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mDestinationUri:Landroid/net/Uri;

.field private blacklist mExtra:Ljava/lang/String;

.field private blacklist mExtra2:Ljava/lang/String;

.field private blacklist mFileHash:Ljava/lang/String;

.field private blacklist mFileIconUri:Landroid/net/Uri;

.field private blacklist mFileSize:J

.field private greylist-max-o mFlags:I

.field private blacklist mInstallWay:I

.field private greylist-max-o mIsVisibleInDownloadsUi:Z

.field private greylist-max-o mMeteredAllowed:Z

.field private greylist-max-o mMimeType:Ljava/lang/String;

.field private blacklist mNotificationClass:Ljava/lang/String;

.field private greylist-max-o mNotificationVisibility:I

.field private greylist-max-o mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mRoamingAllowed:Z

.field private greylist-max-o mScannable:Z

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private blacklist mUri:Landroid/net/Uri;

.field private blacklist mUseSystemCache:Z

.field private blacklist mUserAgent:Ljava/lang/String;

.field private blacklist mXlVipStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 654
    const-class v0, Landroid/app/DownloadManager;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    .line 681
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 683
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 684
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 685
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 686
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 687
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    .line 729
    iput v1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 754
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/app/DownloadManager$Request;->mFileSize:J

    .line 760
    iput v1, p0, Landroid/app/DownloadManager$Request;->mXlVipStatus:I

    .line 762
    iput v1, p0, Landroid/app/DownloadManager$Request;->mInstallWay:I

    .line 770
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$Request;->checkUri(Landroid/net/Uri;)V

    .line 771
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    .line 772
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "uriString"    # Ljava/lang/String;

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    .line 681
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 683
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 684
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 685
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 686
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 687
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    .line 729
    iput v1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 754
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/app/DownloadManager$Request;->mFileSize:J

    .line 760
    iput v1, p0, Landroid/app/DownloadManager$Request;->mXlVipStatus:I

    .line 762
    iput v1, p0, Landroid/app/DownloadManager$Request;->mInstallWay:I

    .line 793
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    .line 794
    return-void
.end method

.method private blacklist checkUri(Landroid/net/Uri;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 775
    if-eqz p1, :cond_69

    .line 779
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "newScheme":Ljava/lang/String;
    if-eqz v0, :cond_50

    .line 784
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "ftp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 786
    const-string v2, "ed2k"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string/jumbo v2, "magnet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_4f

    .line 787
    :cond_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle uri:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 789
    :cond_4f
    :goto_4f
    return-void

    .line 781
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not handle uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 776
    .end local v0    # "newScheme":Ljava/lang/String;
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o encodeHttpHeaders(Landroid/content/ContentValues;)V
    .registers 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 1217
    const/4 v0, 0x0

    .line 1218
    .local v0, "index":I
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1219
    .local v2, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1220
    .local v3, "headerString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http_header_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    nop

    .end local v2    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "headerString":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1222
    goto :goto_7

    .line 1223
    :cond_4c
    return-void
.end method

.method private greylist-max-o putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 1226
    if-eqz p3, :cond_9

    .line 1227
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :cond_9
    return-void
.end method

.method private greylist-max-o setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p1, "base"    # Ljava/io/File;
    .param p2, "subPath"    # Ljava/lang/String;

    .line 935
    if-eqz p2, :cond_d

    .line 938
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 939
    return-void

    .line 936
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subPath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 5
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 964
    if-eqz p1, :cond_20

    .line 967
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 970
    if-nez p2, :cond_e

    .line 971
    const-string p2, ""

    .line 973
    :cond_e
    iget-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    return-object p0

    .line 968
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "header may not contain \':\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist allowScanningByMediaScanner()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 951
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 952
    return-void
.end method

.method public whitelist setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "flags"    # I

    .line 1064
    iput p1, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 1065
    return-object p0
.end method

.method public whitelist setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "allow"    # Z

    .line 1086
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 1087
    return-object p0
.end method

.method public whitelist setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "allowed"    # Z

    .line 1075
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 1076
    return-object p0
.end method

.method public blacklist setApkPackageName(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1340
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mApkPackageName:Ljava/lang/String;

    .line 1341
    return-object p0
.end method

.method public blacklist setAppData(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "appData"    # Ljava/lang/String;

    .line 1248
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mColumnAppData:Ljava/lang/String;

    .line 1249
    return-object p0
.end method

.method public blacklist setAppointName(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "appointName"    # Ljava/lang/String;

    .line 1238
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mAppointName:Ljava/lang/String;

    .line 1239
    return-object p0
.end method

.method public blacklist setBypassRecommendedSizeLimit(Z)V
    .registers 2
    .param p1, "bypass"    # Z

    .line 1277
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mBypassRecommendedSizeLimit:Z

    .line 1278
    return-void
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 993
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    .line 994
    return-object p0
.end method

.method public whitelist setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dirType"    # Ljava/lang/String;
    .param p3, "subPath"    # Ljava/lang/String;

    .line 862
    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 863
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_57

    .line 865
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 866
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_36

    .line 867
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists and is not a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 871
    :cond_30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 876
    :goto_36
    invoke-direct {p0, v0, p3}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    .line 877
    return-object p0

    .line 872
    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 873
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 864
    :cond_57
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get external storage files directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 10
    .param p1, "dirType"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    .line 902
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 903
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b5

    .line 907
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 908
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    const-string v4, "Unable to create directory: "

    if-ge v2, v3, :cond_69

    .line 909
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_69

    .line 920
    :cond_1d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 921
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_89

    .line 922
    :cond_2a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already exists and is not a directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 925
    :cond_47
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_89

    .line 926
    :cond_4e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 927
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 910
    :cond_69
    :goto_69
    :try_start_69
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "downloads"

    .line 911
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_73} :catch_99

    .line 912
    .local v2, "client":Landroid/content/ContentProviderClient;
    :try_start_73
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 913
    .local v3, "extras":Landroid/os/Bundle;
    const-string v5, "dir_type"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v5, "create_external_public_dir"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_8d

    .line 915
    .end local v3    # "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_88

    :try_start_85
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_88} :catch_99

    .line 918
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    :cond_88
    nop

    .line 930
    :goto_89
    invoke-direct {p0, v0, p2}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    .line 931
    return-object p0

    .line 910
    .restart local v2    # "client":Landroid/content/ContentProviderClient;
    :catchall_8d
    move-exception v3

    if-eqz v2, :cond_98

    :try_start_90
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception v5

    :try_start_95
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "context":Landroid/content/Context;
    .end local p0    # "this":Landroid/app/DownloadManager$Request;
    .end local p1    # "dirType":Ljava/lang/String;
    .end local p2    # "subPath":Ljava/lang/String;
    :cond_98
    :goto_98
    throw v3
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_99} :catch_99

    .line 915
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local p0    # "this":Landroid/app/DownloadManager$Request;
    .restart local p1    # "dirType":Ljava/lang/String;
    .restart local p2    # "subPath":Ljava/lang/String;
    :catch_99
    move-exception v2

    .line 916
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 917
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 904
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_b5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get external storage public directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setDestinationToSystemCache()Landroid/app/DownloadManager$Request;
    .registers 2

    .line 838
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    .line 839
    return-object p0
.end method

.method public whitelist setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 819
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 820
    return-object p0
.end method

.method public blacklist setExtra(Ljava/lang/String;)V
    .registers 2
    .param p1, "extra"    # Ljava/lang/String;

    .line 1309
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mExtra:Ljava/lang/String;

    .line 1310
    return-void
.end method

.method public blacklist setExtra2(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 1332
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mExtra2:Ljava/lang/String;

    .line 1333
    return-object p0
.end method

.method public blacklist setFileHash(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileHash"    # Ljava/lang/String;

    .line 1293
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mFileHash:Ljava/lang/String;

    .line 1294
    return-void
.end method

.method public blacklist setFileIconUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1324
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mFileIconUri:Landroid/net/Uri;

    .line 1325
    return-object p0
.end method

.method public blacklist setFileSize(J)Landroid/app/DownloadManager$Request;
    .registers 3
    .param p1, "fileSize"    # J

    .line 1316
    iput-wide p1, p0, Landroid/app/DownloadManager$Request;->mFileSize:J

    .line 1317
    return-object p0
.end method

.method public blacklist setInstallWay(I)V
    .registers 2
    .param p1, "installWay"    # I

    .line 1301
    iput p1, p0, Landroid/app/DownloadManager$Request;->mInstallWay:I

    .line 1302
    return-void
.end method

.method public whitelist setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 1005
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    .line 1006
    return-object p0
.end method

.method public blacklist setNotificationClass(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "notificationClass"    # Ljava/lang/String;

    .line 1258
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mNotificationClass:Ljava/lang/String;

    .line 1259
    return-object p0
.end method

.method public whitelist setNotificationVisibility(I)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "visibility"    # I

    .line 1046
    iput p1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 1047
    return-object p0
.end method

.method public whitelist setRequiresCharging(Z)Landroid/app/DownloadManager$Request;
    .registers 3
    .param p1, "requiresCharging"    # Z

    .line 1098
    if-eqz p1, :cond_9

    .line 1099
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    goto :goto_f

    .line 1101
    :cond_9
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 1103
    :goto_f
    return-object p0
.end method

.method public whitelist setRequiresDeviceIdle(Z)Landroid/app/DownloadManager$Request;
    .registers 3
    .param p1, "requiresDeviceIdle"    # Z

    .line 1118
    if-eqz p1, :cond_9

    .line 1119
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    goto :goto_f

    .line 1121
    :cond_9
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 1123
    :goto_f
    return-object p0
.end method

.method public whitelist setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;
    .registers 3
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1024
    if-eqz p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v0

    goto :goto_d

    .line 1025
    :cond_8
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 1024
    :goto_d
    return-object v0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 984
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    .line 985
    return-object p0
.end method

.method public blacklist setUserAgent(Ljava/lang/String;)V
    .registers 2
    .param p1, "agent"    # Ljava/lang/String;

    .line 1268
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mUserAgent:Ljava/lang/String;

    .line 1269
    return-void
.end method

.method public whitelist setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "isVisible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1141
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 1142
    return-object p0
.end method

.method public blacklist setXlVipStatus(I)V
    .registers 2
    .param p1, "vipstatus"    # I

    .line 1285
    iput p1, p0, Landroid/app/DownloadManager$Request;->mXlVipStatus:I

    .line 1286
    return-void
.end method

.method greylist-max-o toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1150
    .local v0, "values":Landroid/content/ContentValues;
    nop

    .line 1151
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_public_api"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1153
    const-string/jumbo v1, "notificationpackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    const/4 v2, 0x2

    const-string v3, "destination"

    if-eqz v1, :cond_3d

    .line 1156
    const/4 v1, 0x4

    .line 1157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1156
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1158
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 1159
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1158
    const-string v3, "hint"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 1161
    :cond_3d
    nop

    .line 1162
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    if-eqz v1, :cond_44

    .line 1163
    const/4 v1, 0x5

    goto :goto_45

    .line 1164
    :cond_44
    move v1, v2

    .line 1162
    :goto_45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1161
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1167
    :goto_4c
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    if-eqz v1, :cond_52

    const/4 v2, 0x0

    goto :goto_53

    .line 1168
    :cond_52
    nop

    .line 1167
    :goto_53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "scanned"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1170
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    .line 1171
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$Request;->encodeHttpHeaders(Landroid/content/ContentValues;)V

    .line 1174
    :cond_68
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v2, "title"

    invoke-direct {p0, v0, v2, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1175
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    const-string v2, "description"

    invoke-direct {p0, v0, v2, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1176
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    const-string/jumbo v2, "mimetype"

    invoke-direct {p0, v0, v2, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1179
    invoke-static {}, Landroid/app/DownloadManager;->isInternationalVersion()Z

    move-result v1

    const-string/jumbo v2, "total_bytes"

    const-string/jumbo v3, "useragent"

    const-string/jumbo v4, "notificationclass"

    const-string v5, "entity"

    if-eqz v1, :cond_a8

    .line 1180
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mColumnAppData:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1181
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mNotificationClass:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1182
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mUserAgent:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1183
    iget-wide v6, p0, Landroid/app/DownloadManager$Request;->mFileSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1187
    :cond_a8
    iget v1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v6, "visibility"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1188
    iget v1, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "allowed_network_types"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1189
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v6, "allow_roaming"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1190
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v6, "allow_metered"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1191
    iget v1, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "flags"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1192
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v6, "is_visible_in_downloads_ui"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1195
    invoke-static {}, Landroid/app/DownloadManager;->isInternationalVersion()Z

    move-result v1

    if-nez v1, :cond_137

    .line 1196
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mColumnAppData:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1197
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mAppointName:Ljava/lang/String;

    const-string v5, "appointname"

    invoke-direct {p0, v0, v5, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1198
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mNotificationClass:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1199
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mUserAgent:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1201
    iget-wide v3, p0, Landroid/app/DownloadManager$Request;->mFileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1203
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mFileIconUri:Landroid/net/Uri;

    const-string v2, "download_task_thumbnail"

    invoke-direct {p0, v0, v2, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1204
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mApkPackageName:Ljava/lang/String;

    const-string v2, "apk_package_name"

    invoke-direct {p0, v0, v2, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1205
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mFileHash:Ljava/lang/String;

    const-string v2, "download_file_hash"

    invoke-direct {p0, v0, v2, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1206
    iget v1, p0, Landroid/app/DownloadManager$Request;->mInstallWay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_apk_install_way"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1207
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mExtra:Ljava/lang/String;

    const-string v2, "download_extra"

    invoke-direct {p0, v0, v2, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1210
    :cond_137
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mExtra2:Ljava/lang/String;

    const-string v2, "download_extra2"

    invoke-direct {p0, v0, v2, v1}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1213
    return-object v0
.end method
