.class public Landroid/os/AnrMonitor$UploadInfo;
.super Ljava/lang/Object;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadInfo"
.end annotation


# static fields
.field private static final blacklist JSON_BASE_INFO_TAG:Ljava/lang/String; = "baseInfo"

.field private static final blacklist JSON_INFO_ARRAY_TAG:Ljava/lang/String; = "msgs"

.field private static final blacklist JSON_INFO_TAG:Ljava/lang/String; = "msg"

.field private static final blacklist JSON_PACKAGE_NAME_TAG:Ljava/lang/String; = "packageName"

.field private static final blacklist JSON_PROCESS_NAME_TAG:Ljava/lang/String; = "processName"

.field private static final blacklist JSON_THREAD_NAME_TAG:Ljava/lang/String; = "threadName"

.field private static final blacklist JSON_TOOKTIME_TAG:Ljava/lang/String; = "tookTime"

.field private static final blacklist JSON_VERSION_CODE_TAG:Ljava/lang/String; = "versionCode"

.field private static final blacklist JSON_VERSION_NAME_TAG:Ljava/lang/String; = "versionName"


# instance fields
.field blacklist info:Ljava/lang/String;

.field blacklist packageName:Ljava/lang/String;

.field blacklist processName:Ljava/lang/String;

.field blacklist threadName:Ljava/lang/String;

.field blacklist tookTime:J

.field blacklist versionCode:Ljava/lang/String;

.field blacklist versionName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/os/AnrMonitor$UploadInfo;->createJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .registers 11
    .param p0, "infos"    # [Landroid/os/AnrMonitor$UploadInfo;

    .line 819
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 820
    .local v0, "object":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 821
    .local v1, "baseInfo":Lorg/json/JSONObject;
    const-string v2, "processName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 822
    const-string v2, "packageName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    const-string v2, "versionName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    const-string v2, "versionCode"

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 825
    const-string v2, "baseInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 827
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz p0, :cond_64

    array-length v3, p0

    if-lez v3, :cond_64

    .line 828
    array-length v3, p0

    const/4 v4, 0x0

    :goto_3f
    if-ge v4, v3, :cond_64

    aget-object v5, p0, v4

    .line 829
    .local v5, "info":Landroid/os/AnrMonitor$UploadInfo;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 830
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v7, "msg"

    iget-object v8, v5, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 831
    const-string v7, "threadName"

    iget-object v8, v5, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    const-string v7, "tookTime"

    iget-wide v8, v5, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 833
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 828
    nop

    .end local v5    # "info":Landroid/os/AnrMonitor$UploadInfo;
    .end local v6    # "obj":Lorg/json/JSONObject;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 836
    :cond_64
    const-string v3, "msgs"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 837
    sget-boolean v3, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v3, :cond_89

    const-string v3, "AnrMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createJsonString "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8d} :catch_8e

    return-object v3

    .line 839
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "baseInfo":Lorg/json/JSONObject;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :catch_8e
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 842
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist getBaseInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "info"    # Ljava/lang/String;

    .line 900
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 901
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "baseInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 902
    .local v1, "baseInfo":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v2

    .line 903
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "baseInfo":Lorg/json/JSONObject;
    :catch_10
    move-exception v0

    .line 904
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 906
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInfoArray(Ljava/lang/String;)[Landroid/os/AnrMonitor$UploadInfo;
    .registers 17
    .param p0, "info"    # Ljava/lang/String;

    .line 911
    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_3} :catch_90

    move-object/from16 v2, p0

    :try_start_5
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 912
    .local v0, "object":Lorg/json/JSONObject;
    const-string v3, "msgs"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 913
    .local v3, "msgs":Lorg/json/JSONArray;
    if-nez v3, :cond_11

    return-object v1

    .line 914
    :cond_11
    const-string v4, "baseInfo"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 915
    .local v4, "baseInfoObject":Lorg/json/JSONObject;
    const-string v5, "processName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 916
    .local v5, "processName":Ljava/lang/String;
    const-string v6, "packageName"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 917
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "versionName"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 918
    .local v7, "versionName":Ljava/lang/String;
    const-string v8, "versionCode"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 919
    .local v8, "versionCode":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 920
    .local v9, "size":I
    new-array v10, v9, [Landroid/os/AnrMonitor$UploadInfo;

    .line 921
    .local v10, "arrays":[Landroid/os/AnrMonitor$UploadInfo;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_36
    if-ge v11, v9, :cond_8d

    .line 922
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 923
    .local v12, "obj":Lorg/json/JSONObject;
    new-instance v13, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v13}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .line 924
    .local v13, "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    const-string v14, "msg"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    .line 925
    iput-object v5, v13, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    .line 926
    iput-object v6, v13, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    .line 927
    iput-object v7, v13, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    .line 928
    iput-object v8, v13, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    .line 929
    const-string v14, "threadName"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    .line 930
    const-string v14, "tookTime"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v13, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    .line 931
    aput-object v13, v10, v11

    .line 932
    sget-boolean v14, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v14, :cond_89

    const-string v14, "AnrMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInfoArray i "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " info : "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_89} :catch_8e

    .line 921
    .end local v12    # "obj":Lorg/json/JSONObject;
    .end local v13    # "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    :cond_89
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x0

    goto :goto_36

    .line 934
    .end local v11    # "i":I
    :cond_8d
    return-object v10

    .line 935
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v3    # "msgs":Lorg/json/JSONArray;
    .end local v4    # "baseInfoObject":Lorg/json/JSONObject;
    .end local v5    # "processName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    .end local v8    # "versionCode":Ljava/lang/String;
    .end local v9    # "size":I
    .end local v10    # "arrays":[Landroid/os/AnrMonitor$UploadInfo;
    :catch_8e
    move-exception v0

    goto :goto_93

    :catch_90
    move-exception v0

    move-object/from16 v2, p0

    .line 936
    .local v0, "e":Lorg/json/JSONException;
    :goto_93
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 938
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getInfoByJsonString(Ljava/lang/String;)Landroid/os/AnrMonitor$UploadInfo;
    .registers 11
    .param p0, "info"    # Ljava/lang/String;

    .line 876
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 877
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "baseInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 878
    .local v1, "baseInfoObject":Lorg/json/JSONObject;
    const-string v2, "processName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, "processName":Ljava/lang/String;
    const-string v3, "packageName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 880
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "versionName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 881
    .local v4, "versionName":Ljava/lang/String;
    const-string v5, "versionCode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 882
    .local v5, "versionCode":Ljava/lang/String;
    new-instance v6, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v6}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .line 883
    .local v6, "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    const-string v7, "msg"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    .line 884
    iput-object v2, v6, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    .line 885
    iput-object v3, v6, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    .line 886
    iput-object v4, v6, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    .line 887
    iput-object v5, v6, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    .line 888
    const-string v7, "threadName"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    .line 889
    const-string v7, "tookTime"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    .line 890
    sget-boolean v7, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v7, :cond_64

    const-string v7, "AnrMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getInfo info : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_64} :catch_65

    .line 891
    :cond_64
    return-object v6

    .line 892
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "baseInfoObject":Lorg/json/JSONObject;
    .end local v2    # "processName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "versionName":Ljava/lang/String;
    .end local v5    # "versionCode":Ljava/lang/String;
    .end local v6    # "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    :catch_65
    move-exception v0

    .line 893
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 895
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getMatchTag(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "msg"    # Landroid/os/AnrMonitor$UploadInfo;

    .line 847
    :try_start_0
    invoke-static {p0}, Landroid/os/AnrMonitor$UploadInfo;->getSaveContent(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "matchString":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 849
    .end local v0    # "matchString":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 852
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getSaveContent(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .registers 6
    .param p0, "msg"    # Landroid/os/AnrMonitor$UploadInfo;

    .line 857
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 858
    .local v0, "object":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 859
    .local v1, "baseInfo":Lorg/json/JSONObject;
    const-string v2, "processName"

    iget-object v3, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    const-string v2, "packageName"

    iget-object v3, p0, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 861
    const-string v2, "versionName"

    iget-object v3, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    const-string v2, "versionCode"

    iget-object v3, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 863
    const-string v2, "baseInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    const-string v2, "msg"

    iget-object v3, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 865
    const-string v2, "threadName"

    iget-object v3, p0, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    const-string v2, "tookTime"

    iget-wide v3, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 867
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    return-object v2

    .line 868
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "baseInfo":Lorg/json/JSONObject;
    :catch_45
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 871
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getInfo()Ljava/lang/String;
    .registers 2

    .line 779
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKeyWord()Ljava/lang/String;
    .registers 5

    .line 808
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 809
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "tookTime"

    invoke-virtual {p0}, Landroid/os/AnrMonitor$UploadInfo;->getTookTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 810
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 811
    .end local v0    # "object":Lorg/json/JSONObject;
    :catch_13
    move-exception v0

    .line 812
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 814
    .end local v0    # "e":Lorg/json/JSONException;
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 787
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .registers 2

    .line 783
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getThreadName()Ljava/lang/String;
    .registers 2

    .line 799
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTookTime()J
    .registers 3

    .line 803
    iget-wide v0, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    return-wide v0
.end method

.method public blacklist getVersionCode()Ljava/lang/String;
    .registers 2

    .line 795
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersionName()Ljava/lang/String;
    .registers 2

    .line 791
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " processName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " versionName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " versionCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tookTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
