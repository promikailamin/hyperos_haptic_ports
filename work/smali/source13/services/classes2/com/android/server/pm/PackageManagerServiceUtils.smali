.class public Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_PACKAGE_PARSER_CACHE_ENABLED:Z = true

.field private static final ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:J = 0x99c835cL

.field private static final FORCE_PACKAGE_PARSED_CACHE_ENABLED:Z = false

.field private static final FSVERITY_DISABLED:I = 0x0

.field private static final FSVERITY_ENABLED:I = 0x2

.field private static final MAX_CRITICAL_INFO_DUMP_SIZE:J = 0x2dc6c0L

.field public static final REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 138
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 140
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V
    .registers 16
    .param p0, "compat"    # Lcom/android/server/compat/PlatformCompat;
    .param p1, "resolver"    # Lcom/android/server/pm/resolution/ComponentResolverApi;
    .param p3, "isReceiver"    # Z
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "filterCallingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/compat/PlatformCompat;",
            "Lcom/android/server/pm/resolution/ComponentResolverApi;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1138
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    const/4 v1, 0x0

    const-string v2, "PackageManager"

    if-eqz v0, :cond_f

    .line 1139
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, v3, v2, v4}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    goto :goto_10

    .line 1140
    :cond_f
    move-object v0, v1

    :goto_10
    nop

    .line 1142
    .local v0, "logPrinter":Landroid/util/Printer;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_17
    if-ltz v3, :cond_d8

    .line 1143
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    .line 1146
    .local v4, "info":Landroid/content/pm/ComponentInfo;
    iget-object v5, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    invoke-static {v1, p6, v5, v6}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v5

    if-nez v5, :cond_30

    .line 1148
    goto/16 :goto_cc

    .line 1152
    :cond_30
    const-wide/32 v5, 0x99c835c

    iget-object v7, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1154
    goto/16 :goto_cc

    .line 1158
    :cond_3d
    instance-of v5, v4, Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_55

    .line 1159
    if-eqz p3, :cond_4c

    .line 1160
    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v5

    .local v5, "comp":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    goto :goto_61

    .line 1162
    .end local v5    # "comp":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    :cond_4c
    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v5

    .restart local v5    # "comp":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    goto :goto_61

    .line 1164
    .end local v5    # "comp":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    :cond_55
    instance-of v5, v4, Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_d0

    .line 1165
    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedService;

    move-result-object v5

    .line 1171
    .restart local v5    # "comp":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    :goto_61
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 1172
    goto :goto_cc

    .line 1175
    :cond_6c
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v7, p4, p5}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    .line 1178
    .local v6, "match":Z
    if-nez v6, :cond_cc

    .line 1179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent does not match component\'s intent filter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Access blocked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-eqz v7, :cond_c9

    .line 1182
    const-string v7, "Component intent filters:"

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;-><init>(Landroid/util/Printer;)V

    invoke-interface {v7, v8}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1184
    const-string v7, "-----------------------------"

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_c9
    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1142
    .end local v4    # "info":Landroid/content/pm/ComponentInfo;
    .end local v5    # "comp":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .end local v6    # "match":Z
    :cond_cc
    :goto_cc
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_17

    .line 1168
    .restart local v4    # "info":Landroid/content/pm/ComponentInfo;
    :cond_d0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported component type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1189
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/content/pm/ComponentInfo;
    :cond_d8
    return-void
.end method

.method public static arrayToString([I)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [I

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1221
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1222
    if-eqz p0, :cond_21

    .line 1223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 1224
    if-lez v1, :cond_19

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    :cond_19
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1223
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1228
    .end local v1    # "i":I
    :cond_21
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "baseFilename"    # Ljava/lang/String;
    .param p1, "splitFilenameArray"    # [Ljava/lang/String;

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1066
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1067
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "baseFilePath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 1070
    .local v2, "baseRootHash":[B
    const-string v4, "0"

    if-nez v2, :cond_26

    .line 1071
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 1073
    :cond_26
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    :goto_2d
    if-eqz p1, :cond_6c

    array-length v5, p1

    if-nez v5, :cond_33

    goto :goto_6c

    .line 1079
    :cond_33
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_36
    if-ltz v5, :cond_67

    .line 1080
    aget-object v6, p1, v5

    .line 1081
    .local v6, "splitFilename":Ljava/lang/String;
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1082
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1083
    .local v7, "splitFilePath":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object v8

    .line 1084
    .local v8, "splitRootHash":[B
    const-string v9, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    if-nez v8, :cond_5d

    .line 1086
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 1088
    :cond_5d
    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    .end local v6    # "splitFilename":Ljava/lang/String;
    .end local v7    # "splitFilePath":Ljava/lang/String;
    .end local v8    # "splitRootHash":[B
    :goto_64
    add-int/lit8 v5, v5, -0x1

    goto :goto_36

    .line 1091
    .end local v5    # "i":I
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1076
    :cond_6c
    :goto_6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J
    .registers 9
    .param p0, "packagePath"    # Ljava/lang/String;
    .param p1, "abiOverride"    # Ljava/lang/String;

    .line 930
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 932
    .local v0, "packageFile":Ljava/io/File;
    :try_start_5
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    .line 933
    .local v1, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 934
    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v2

    const/4 v3, 0x0

    .line 933
    invoke-static {v2, v0, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 935
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-nez v3, :cond_24

    .line 939
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/PackageLite;

    invoke-static {v3, p1}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v3

    return-wide v3

    .line 936
    :cond_24
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v4

    .line 937
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "packageFile":Ljava/io/File;
    .end local p0    # "packagePath":Ljava/lang/String;
    .end local p1    # "abiOverride":Ljava/lang/String;
    throw v3
    :try_end_36
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_36} :catch_36
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_36} :catch_36

    .line 940
    .end local v1    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    .restart local v0    # "packageFile":Ljava/io/File;
    .restart local p0    # "packagePath":Ljava/lang/String;
    .restart local p1    # "abiOverride":Ljava/lang/String;
    :catch_36
    move-exception v1

    .line 941
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to calculate installed size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static canJoinSharedUserId(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z
    .registers 4
    .param p0, "packageSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p1, "sharedUserSigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 708
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 709
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 708
    :goto_11
    return v0
.end method

.method public static checkDowngrade(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    .registers 10
    .param p0, "before"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "after"    # Landroid/content/pm/PackageInfoLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1423
    invoke-virtual {p1}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-string v1, " is older than current "

    const/16 v2, -0x19

    if-ltz v0, :cond_ae

    .line 1427
    invoke-virtual {p1}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v3

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_ad

    .line 1428
    iget v0, p1, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v3

    if-lt v0, v3, :cond_86

    .line 1434
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 1435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_ad

    .line 1436
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 1437
    .local v3, "splitName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 1438
    .local v4, "j":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_83

    .line 1439
    iget-object v5, p1, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    aget v5, v5, v0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v6

    aget v6, v6, v4

    if-lt v5, v6, :cond_4e

    goto :goto_83

    .line 1440
    :cond_4e
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update split "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " revision code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1444
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v6

    aget v6, v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 1435
    .end local v3    # "splitName":Ljava/lang/String;
    .end local v4    # "j":I
    :cond_83
    :goto_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1429
    .end local v0    # "i":I
    :cond_86
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update base revision code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1431
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1450
    :cond_ad
    return-void

    .line 1424
    :cond_ae
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update version code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1426
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static checkISA(Ljava/lang/String;)Z
    .registers 7
    .param p0, "isa"    # Ljava/lang/String;

    .line 222
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 223
    .local v4, "abi":Ljava/lang/String;
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 224
    const/4 v0, 0x1

    return v0

    .line 222
    .end local v4    # "abi":Ljava/lang/String;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 227
    :cond_18
    return v2
.end method

.method public static comparePackageSignatures(Lcom/android/server/pm/PackageSetting;[Landroid/content/pm/Signature;)Z
    .registers 4
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .line 443
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 444
    .local v0, "signingDetails":Landroid/content/pm/SigningDetails;
    sget-object v1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v0, v1, :cond_15

    .line 445
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    .line 444
    :goto_16
    return v1
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 9
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 401
    const/4 v0, 0x1

    if-nez p0, :cond_8

    .line 402
    if-nez p1, :cond_6

    .line 403
    goto :goto_7

    .line 404
    :cond_6
    const/4 v0, -0x1

    .line 402
    :goto_7
    return v0

    .line 407
    :cond_8
    if-nez p1, :cond_c

    .line 408
    const/4 v0, -0x2

    return v0

    .line 411
    :cond_c
    array-length v1, p0

    array-length v2, p1

    const/4 v3, -0x3

    if-eq v1, v2, :cond_12

    .line 412
    return v3

    .line 416
    :cond_12
    array-length v1, p0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_24

    .line 417
    aget-object v0, p0, v2

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 418
    move v3, v2

    goto :goto_23

    .line 419
    :cond_22
    nop

    .line 417
    :goto_23
    return v3

    .line 422
    :cond_24
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 423
    .local v0, "set1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    move v4, v2

    :goto_2b
    if-ge v4, v1, :cond_35

    aget-object v5, p0, v4

    .line 424
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 426
    :cond_35
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 427
    .local v1, "set2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v4, p1

    move v5, v2

    :goto_3c
    if-ge v5, v4, :cond_46

    aget-object v6, p1, v5

    .line 428
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 427
    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 431
    :cond_46
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 432
    return v2

    .line 434
    :cond_4d
    return v3
.end method

.method public static compressedFileExists(Ljava/lang/String;)Z
    .registers 3
    .param p0, "codePath"    # Ljava/lang/String;

    .line 864
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 865
    .local v0, "compressedFiles":[Ljava/io/File;
    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private static copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "targetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1023
    invoke-static {p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1029
    .local v0, "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v2, v3

    const/16 v3, 0x1a4

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1031
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 1032
    const/4 v2, 0x0

    .line 1034
    .local v2, "source":Ljava/io/FileInputStream;
    :try_start_44
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 1035
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_56

    .line 1037
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1038
    nop

    .line 1039
    return-void

    .line 1037
    :catchall_56
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1038
    throw v3

    .line 1024
    .end local v0    # "targetFile":Ljava/io/File;
    .end local v1    # "targetFd":Ljava/io/FileDescriptor;
    .end local v2    # "source":Ljava/io/FileInputStream;
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyPackage(Ljava/lang/String;Ljava/io/File;)I
    .registers 11
    .param p0, "packagePath"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/io/File;

    .line 993
    const-string v0, "PackageManager"

    if-nez p0, :cond_6

    .line 994
    const/4 v0, -0x3

    return v0

    .line 998
    :cond_6
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 999
    .local v1, "packageFile":Ljava/io/File;
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v2

    .line 1000
    .local v2, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 1001
    invoke-virtual {v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v3

    const/4 v4, 0x0

    .line 1000
    invoke-static {v3, v1, v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 1002
    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1003
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse package at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    return v0

    .line 1006
    :cond_3a
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/PackageLite;

    .line 1007
    .local v4, "pkg":Landroid/content/pm/parsing/PackageLite;
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "base.apk"

    invoke-static {v5, p1, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 1009
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_54
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_87

    .line 1010
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "split_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1011
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1010
    invoke-static {v6, p1, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_84} :catch_89
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_84} :catch_89

    .line 1009
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 1014
    .end local v5    # "i":I
    :cond_87
    const/4 v0, 0x1

    return v0

    .line 1015
    .end local v1    # "packageFile":Ljava/io/File;
    .end local v2    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    .end local v4    # "pkg":Landroid/content/pm/parsing/PackageLite;
    :catch_89
    move-exception v1

    .line 1016
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy package at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/4 v0, -0x4

    return v0
.end method

.method public static decompressFile(Ljava/io/File;Ljava/io/File;)I
    .registers 9
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 794
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string v1, ", dst: "

    if-eqz v0, :cond_2e

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decompress file; src: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 797
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_2e
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 800
    .local v0, "atomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 802
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_34
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3e} :catch_64

    .line 804
    .local v3, "fileIn":Ljava/io/InputStream;
    :try_start_3e
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 805
    invoke-static {v3, v2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 807
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 808
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    const/16 v5, 0x1a4

    invoke-static {v4, v5}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    .line 809
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_5a

    .line 810
    const/4 v4, 0x1

    .line 811
    :try_start_56
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_64

    .line 810
    return v4

    .line 801
    :catchall_5a
    move-exception v4

    :try_start_5b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception v5

    :try_start_60
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "atomicFile":Landroid/util/AtomicFile;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "dstFile":Ljava/io/File;
    :goto_63
    throw v4
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_64} :catch_64

    .line 811
    .end local v3    # "fileIn":Ljava/io/InputStream;
    .restart local v0    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "dstFile":Ljava/io/File;
    :catch_64
    move-exception v3

    .line 812
    .local v3, "e":Ljava/io/IOException;
    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decompress file; src: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 813
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 814
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 815
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 817
    .end local v3    # "e":Ljava/io/IOException;
    const/16 v1, -0x6e

    return v1
.end method

.method public static decompressFiles(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)I
    .registers 15
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "dstCodePath"    # Ljava/io/File;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 768
    const-string v0, "Failed to decompress; pkg: "

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 769
    .local v1, "compressedFiles":[Ljava/io/File;
    const/4 v2, 0x1

    .line 771
    .local v2, "ret":I
    const/16 v3, 0x1ed

    const/4 v4, 0x6

    :try_start_a
    invoke-static {p1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    .line 772
    array-length v3, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_10
    if-ge v6, v3, :cond_57

    aget-object v7, v1, v6

    .line 773
    .local v7, "srcFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 774
    .local v8, "srcFileName":Ljava/lang/String;
    nop

    .line 775
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, ".gz"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    .line 774
    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 776
    .local v9, "dstFileName":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 777
    .local v10, "dstFile":Ljava/io/File;
    invoke-static {v7, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->decompressFile(Ljava/io/File;Ljava/io/File;)I

    move-result v11

    move v2, v11

    .line 778
    const/4 v11, 0x1

    if-eq v2, v11, :cond_54

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_53
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_53} :catch_58

    .line 782
    goto :goto_57

    .line 772
    .end local v7    # "srcFile":Ljava/io/File;
    .end local v8    # "srcFileName":Ljava/lang/String;
    .end local v9    # "dstFileName":Ljava/lang/String;
    .end local v10    # "dstFile":Ljava/io/File;
    :cond_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 789
    :cond_57
    :goto_57
    goto :goto_79

    .line 785
    :catch_58
    move-exception v3

    .line 786
    .local v3, "e":Landroid/system/ErrnoException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", err: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v3, Landroid/system/ErrnoException;->errno:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 790
    .end local v3    # "e":Landroid/system/ErrnoException;
    :goto_79
    return v2
.end method

.method public static deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "abiOverride"    # Ljava/lang/String;

    .line 381
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 384
    :cond_a
    return-object p0
.end method

.method public static dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 261
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 262
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x2dc6c0

    sub-long/2addr v1, v3

    .line 263
    .local v1, "skipSize":J
    :try_start_c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_49

    .line 264
    .local v3, "in":Ljava/io/BufferedReader;
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_22

    .line 265
    :try_start_1c
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_22

    .line 263
    :catchall_20
    move-exception v4

    goto :goto_40

    .line 267
    :cond_22
    :goto_22
    const/4 v4, 0x0

    .line 268
    .local v4, "line":Ljava/lang/String;
    :goto_23
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_3c

    .line 269
    const-string v5, "ignored: updated version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_23

    .line 270
    :cond_33
    const-wide v5, 0x20900000007L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_20

    goto :goto_23

    .line 272
    .end local v4    # "line":Ljava/lang/String;
    :cond_3c
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_49

    .line 273
    .end local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4a

    .line 263
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :goto_40
    :try_start_40
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v5

    :try_start_45
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "skipSize":J
    .end local p0    # "proto":Landroid/util/proto/ProtoOutputStream;
    :goto_48
    throw v4
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_49

    .line 272
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "skipSize":J
    .restart local p0    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catch_49
    move-exception v3

    .line 274
    :goto_4a
    return-void
.end method

.method public static dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 277
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 278
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x2dc6c0

    sub-long/2addr v1, v3

    .line 279
    .local v1, "skipSize":J
    :try_start_c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_49

    .line 280
    .local v3, "in":Ljava/io/BufferedReader;
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_22

    .line 281
    :try_start_1c
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_22

    .line 279
    :catchall_20
    move-exception v4

    goto :goto_40

    .line 283
    :cond_22
    :goto_22
    const/4 v4, 0x0

    .line 284
    .local v4, "line":Ljava/lang/String;
    :goto_23
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_3c

    .line 285
    const-string v5, "ignored: updated version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_23

    .line 286
    :cond_33
    if-eqz p1, :cond_38

    .line 287
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    :cond_38
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_20

    goto :goto_23

    .line 291
    .end local v4    # "line":Ljava/lang/String;
    :cond_3c
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_49

    .line 292
    .end local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4a

    .line 279
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :goto_40
    :try_start_40
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v5

    :try_start_45
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "skipSize":J
    .end local p0    # "pw":Ljava/io/PrintWriter;
    .end local p1    # "msg":Ljava/lang/String;
    :goto_48
    throw v4
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_49

    .line 291
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "skipSize":J
    .restart local p0    # "pw":Ljava/io/PrintWriter;
    .restart local p1    # "msg":Ljava/lang/String;
    :catch_49
    move-exception v3

    .line 293
    :goto_4a
    return-void
.end method

.method public static enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V
    .registers 7
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerInternal;
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userHandle"    # I

    .line 352
    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_4f

    .line 353
    if-ltz p3, :cond_26

    .line 354
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_26

    .line 356
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_26
    :goto_26
    if-gez p3, :cond_4f

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to check shell permission for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    .line 360
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_4f
    return-void
.end method

.method public static enforceSystemOrPhoneCaller(Ljava/lang/String;I)V
    .registers 5
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "callingUid"    # I

    .line 370
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_9

    goto :goto_2c

    .line 371
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_2c
    :goto_2c
    return-void
.end method

.method public static enforceSystemOrRoot(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 1337
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1340
    return-void

    .line 1338
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceSystemOrRootOrShell(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .line 1308
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1311
    return-void

    .line 1309
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractNativeBinaries(Ljava/io/File;Ljava/lang/String;)I
    .registers 8
    .param p0, "dstCodePath"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 716
    new-instance v0, Ljava/io/File;

    const-string v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 717
    .local v0, "libraryRoot":Ljava/io/File;
    const/4 v1, 0x0

    .line 719
    .local v1, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_8
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v2

    move-object v1, v2

    .line 720
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_19
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    .line 727
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 720
    return v2

    .line 727
    :catchall_17
    move-exception v2

    goto :goto_37

    .line 722
    :catch_19
    move-exception v2

    .line 723
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x6

    :try_start_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to extract native libraries; pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_17

    .line 725
    const/16 v3, -0x6e

    .line 727
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 725
    return v3

    .line 727
    .end local v2    # "e":Ljava/io/IOException;
    :goto_37
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 728
    throw v2
.end method

.method private static getBackupSettingsProblemFile()Ljava/io/File;
    .registers 4

    .line 253
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 254
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "uiderrors_backup.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v2, "fname":Ljava/io/File;
    return-object v2
.end method

.method public static getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;
    .registers 10
    .param p0, "codePath"    # Ljava/lang/String;

    .line 821
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 822
    .local v0, "stubCodePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, "stubName":Ljava/lang/String;
    const-string v2, "-Stub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 838
    .local v3, "idx":I
    const/4 v4, 0x0

    if-ltz v3, :cond_7e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    if-eq v5, v2, :cond_1e

    goto :goto_7e

    .line 842
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 843
    .local v2, "stubParentDir":Ljava/io/File;
    const-string v5, "PackageManager"

    if-nez v2, :cond_3d

    .line 844
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to determine stub parent dir for codePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-object v4

    .line 848
    :cond_3d
    new-instance v4, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 849
    .local v4, "compressedPath":Ljava/io/File;
    new-instance v6, Lcom/android/server/pm/PackageManagerServiceUtils$1;

    invoke-direct {v6}, Lcom/android/server/pm/PackageManagerServiceUtils$1;-><init>()V

    invoke-virtual {v4, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 856
    .local v6, "files":[Ljava/io/File;
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v7, :cond_7d

    if-eqz v6, :cond_7d

    array-length v7, v6

    if-lez v7, :cond_7d

    .line 857
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCompressedFiles["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_7d
    return-object v6

    .line 839
    .end local v2    # "stubParentDir":Ljava/io/File;
    .end local v4    # "compressedPath":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    :cond_7e
    :goto_7e
    return-object v4
.end method

.method public static getLastModifiedTime(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)J
    .registers 9
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 231
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "srcFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_14

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1

    .line 235
    :cond_14
    new-instance v1, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, "baseFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 237
    .local v2, "maxModifiedTime":J
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_28
    if-ltz v4, :cond_40

    .line 238
    new-instance v5, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v5, "splitFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 237
    .end local v5    # "splitFile":Ljava/io/File;
    add-int/lit8 v4, v4, -0x1

    goto :goto_28

    .line 241
    .end local v4    # "i":I
    :cond_40
    return-wide v2
.end method

.method public static getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p2, "packagePath"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "abiOverride"    # Ljava/lang/String;

    .line 873
    new-instance v0, Landroid/content/pm/PackageInfoLite;

    invoke-direct {v0}, Landroid/content/pm/PackageInfoLite;-><init>()V

    .line 874
    .local v0, "ret":Landroid/content/pm/PackageInfoLite;
    const/4 v1, -0x2

    if-eqz p2, :cond_8b

    if-nez p1, :cond_c

    goto/16 :goto_8b

    .line 880
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 883
    .local v2, "packageFile":Ljava/io/File;
    :try_start_11
    invoke-static {p1, p4}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_7d

    .line 892
    .local v3, "sizeBytes":J
    nop

    .line 894
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 896
    .local v1, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 897
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v5

    iput v5, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 898
    iput-wide v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 899
    iput p3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 902
    :try_start_2c
    invoke-static {p0, v1}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v5
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_30} :catch_76

    .line 906
    .local v5, "recommendedInstallLocation":I
    nop

    .line 907
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 908
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    .line 909
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 910
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCodeMajor()I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInfoLite;->versionCodeMajor:I

    .line 911
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getBaseRevisionCode()I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    .line 912
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    .line 913
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v6

    iput v6, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 914
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVerifiers()[Landroid/content/pm/VerifierInfo;

    move-result-object v6

    iput-object v6, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 915
    iput v5, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 916
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    move-result v6

    iput-boolean v6, v0, Landroid/content/pm/PackageInfoLite;->multiArch:Z

    .line 917
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v6

    iput-boolean v6, v0, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    .line 918
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    move-result v6

    iput-boolean v6, v0, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    .line 920
    return-object v0

    .line 904
    .end local v5    # "recommendedInstallLocation":I
    :catch_76
    move-exception v5

    .line 905
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 884
    .end local v1    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v3    # "sizeBytes":J
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7d
    move-exception v3

    .line 885
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_88

    .line 886
    const/4 v1, -0x6

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_8a

    .line 888
    :cond_88
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 891
    :goto_8a
    return-object v0

    .line 875
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8b
    :goto_8b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 877
    return-object v0
.end method

.method public static getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 10
    .param p0, "targetDir"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1243
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1244
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 1247
    .local v1, "bytes":[B
    :goto_9
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1249
    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1250
    .local v2, "firstLevelDirName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v4

    .line 1251
    .local v2, "firstLevelDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_96

    .line 1253
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1256
    .local v3, "dirName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1257
    .local v4, "result":Ljava/io/File;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    if-eqz v5, :cond_95

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->tryParsePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    goto :goto_95

    .line 1258
    :cond_68
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "codepath is off: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1259
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1261
    :cond_95
    :goto_95
    return-object v4

    .line 1251
    .end local v3    # "dirName":Ljava/lang/String;
    .end local v4    # "result":Ljava/io/File;
    :cond_96
    goto/16 :goto_9
.end method

.method public static getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I
    .registers 4
    .param p0, "packageVolume"    # Landroid/os/storage/VolumeInfo;
    .param p1, "packageIsExternal"    # Z

    .line 1283
    if-eqz p0, :cond_1c

    .line 1284
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 1285
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_1c

    .line 1286
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1287
    const/4 v1, 0x1

    return v1

    .line 1289
    :cond_10
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1290
    const/4 v1, 0x2

    return v1

    .line 1292
    :cond_18
    if-eqz p1, :cond_1c

    .line 1293
    const/4 v1, 0x3

    return v1

    .line 1297
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private static getRootHash(Ljava/lang/String;)[B
    .registers 6
    .param p0, "filename"    # Ljava/lang/String;

    .line 1103
    nop

    .line 1104
    :try_start_1
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->unsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object v0

    .line 1105
    .local v0, "baseFileSignature":[B
    if-eqz v0, :cond_3a

    .line 1108
    nop

    .line 1109
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v1

    .line 1110
    .local v1, "signature":Landroid/os/incremental/V4Signature;
    iget-object v2, v1, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    if-eqz v2, :cond_32

    .line 1113
    iget-object v2, v1, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    .line 1114
    invoke-static {v2}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v2

    .line 1115
    .local v2, "hashInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    iget-object v3, v2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1118
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v3, v4}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    move-result-object v3

    return-object v3

    .line 1116
    :cond_2a
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Root has not present"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "filename":Ljava/lang/String;
    throw v3

    .line 1111
    .end local v2    # "hashInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_32
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Hashing info not present"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "filename":Ljava/lang/String;
    throw v2

    .line 1106
    .end local v1    # "signature":Landroid/os/incremental/V4Signature;
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_3a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File signature not present"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "filename":Ljava/lang/String;
    throw v1
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_42} :catch_42

    .line 1119
    .end local v0    # "baseFileSignature":[B
    .restart local p0    # "filename":Ljava/lang/String;
    :catch_42
    move-exception v0

    .line 1120
    .local v0, "ignore":Ljava/io/IOException;
    const-string v1, "PackageManager"

    const-string v2, "ERROR: could not load root hash from incremental install"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .end local v0    # "ignore":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .registers 4

    .line 245
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 246
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "uiderrors.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    .local v2, "fname":Ljava/io/File;
    return-object v2
.end method

.method public static hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z
    .registers 7
    .param p0, "manager"    # Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolveInfoFlags"    # J
    .param p5, "userId"    # I

    .line 1202
    invoke-interface/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z
    .registers 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method static isApkVerityEnabled()Z
    .registers 3

    .line 540
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_11

    .line 541
    const-string/jumbo v0, "ro.apk_verity.mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    :cond_11
    const/4 v1, 0x1

    .line 540
    :cond_12
    return v1
.end method

.method public static isDowngradePermitted(IZ)Z
    .registers 7
    .param p0, "installFlags"    # I
    .param p1, "isAppDebuggable"    # Z

    .line 971
    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 973
    .local v0, "downgradeRequested":Z
    :goto_9
    if-nez v0, :cond_c

    .line 974
    return v2

    .line 976
    :cond_c
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v3, :cond_15

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    move v3, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v3, v1

    .line 977
    .local v3, "isDebuggable":Z
    :goto_16
    if-eqz v3, :cond_19

    .line 978
    return v1

    .line 980
    :cond_19
    const/high16 v4, 0x100000

    and-int/2addr v4, p0

    if-eqz v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public static isSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .registers 3
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 1126
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public static isSystemOrRoot()Z
    .registers 2

    .line 1325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1326
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method public static isSystemOrRootOrShell()Z
    .registers 2

    .line 1317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1318
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    if-eqz v0, :cond_11

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method public static isUnusedSinceTimeInMillis(JJJLcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;JJ)Z
    .registers 16
    .param p0, "firstInstallTime"    # J
    .param p2, "currentTimeInMillis"    # J
    .param p4, "thresholdTimeinMillis"    # J
    .param p6, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p7, "latestPackageUseTimeInMillis"    # J
    .param p9, "latestForegroundPackageUseTimeInMillis"    # J

    .line 182
    sub-long v0, p2, p0

    cmp-long v0, v0, p4

    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 183
    return v1

    .line 187
    :cond_8
    sub-long v2, p2, p9

    cmp-long v0, v2, p4

    const/4 v2, 0x1

    if-gez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 191
    .local v0, "isActiveInForeground":Z
    :goto_12
    if-eqz v0, :cond_15

    .line 192
    return v1

    .line 197
    :cond_15
    sub-long v3, p2, p7

    cmp-long v3, v3, p4

    if-gez v3, :cond_23

    .line 200
    invoke-virtual {p6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v1

    .line 202
    .local v3, "isActiveInBackgroundAndUsedByOtherPackages":Z
    :goto_24
    if-nez v3, :cond_27

    move v1, v2

    :cond_27
    return v1
.end method

.method public static isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .registers 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$applyEnforceIntentFilterMatching$1(Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Z
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "f"    # Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1176
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/android/server/IntentResolver;->intentMatchesFilter(Landroid/content/IntentFilter;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$applyEnforceIntentFilterMatching$2(Landroid/util/Printer;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)V
    .registers 4
    .param p0, "logPrinter"    # Landroid/util/Printer;
    .param p1, "f"    # Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1183
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, p0, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 2
    .param p0, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 141
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static logCriticalInfo(ILjava/lang/String;)V
    .registers 10
    .param p0, "priority"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 296
    const-string v0, "PackageManager"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writePmCriticalInfo(Ljava/lang/String;)V

    .line 299
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 300
    .local v0, "fname":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 301
    .local v1, "out":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 302
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 303
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "dateString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 306
    nop

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    .line 306
    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_51} :catch_53

    .line 311
    nop

    .end local v0    # "fname":Ljava/io/File;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "dateString":Ljava/lang/String;
    goto :goto_54

    .line 310
    :catch_53
    move-exception v0

    .line 312
    :goto_54
    return-void
.end method

.method public static makeDirRecursive(Ljava/io/File;I)V
    .registers 7
    .param p0, "targetDir"    # Ljava/io/File;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1045
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 1046
    .local v0, "targetDirPath":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v1

    .line 1048
    .local v1, "directoriesCount":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9
    if-gt v2, v1, :cond_2c

    .line 1049
    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    .line 1050
    .local v3, "currentDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1051
    goto :goto_29

    .line 1053
    :cond_1b
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 1054
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 1048
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1056
    .end local v2    # "i":I
    .end local v3    # "currentDir":Ljava/io/File;
    :cond_2c
    return-void
.end method

.method private static matchSignatureInSystem(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/PackageSetting;)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "disabledPkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 518
    nop

    .line 519
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 518
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 521
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_32

    .line 526
    :cond_19
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated system app mismatches cert on /system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 528
    const/4 v0, 0x0

    return v0

    .line 524
    :cond_32
    :goto_32
    return v1
.end method

.method private static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z
    .registers 14
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageSignatures"    # Lcom/android/server/pm/PackageSignatures;
    .param p2, "parsedSignatures"    # Landroid/content/pm/SigningDetails;

    .line 457
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 458
    .local v0, "existingSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_18

    aget-object v5, v1, v4

    .line 459
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 461
    :cond_18
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 462
    .local v1, "scannedCompatSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_23
    if-ge v5, v4, :cond_40

    aget-object v6, v2, v5

    .line 464
    .local v6, "sig":Landroid/content/pm/Signature;
    :try_start_27
    invoke-virtual {v6}, Landroid/content/pm/Signature;->getChainSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 465
    .local v7, "chainSignatures":[Landroid/content/pm/Signature;
    array-length v8, v7

    move v9, v3

    :goto_2d
    if-ge v9, v8, :cond_38

    aget-object v10, v7, v9

    .line 466
    .local v10, "chainSig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_27 .. :try_end_34} :catch_39

    .line 465
    nop

    .end local v10    # "chainSig":Landroid/content/pm/Signature;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 470
    .end local v7    # "chainSignatures":[Landroid/content/pm/Signature;
    :cond_38
    goto :goto_3d

    .line 468
    :catch_39
    move-exception v7

    .line 469
    .local v7, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v6    # "sig":Landroid/content/pm/Signature;
    .end local v7    # "e":Ljava/security/cert/CertificateEncodingException;
    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 473
    :cond_40
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 475
    iput-object p2, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 476
    const/4 v2, 0x1

    return v2

    .line 477
    :cond_4a
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 482
    const/4 v2, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has flattened signing certificate chain. Unable to install newer version with rotated signing certificate."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 486
    :cond_6d
    return v3
.end method

.method private static matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "existingSignatures"    # Landroid/content/pm/SigningDetails;
    .param p2, "parsedSignatures"    # Landroid/content/pm/SigningDetails;
    .param p3, "flags"    # I

    .line 494
    const/4 v0, 0x0

    .line 496
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x4

    :try_start_2
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/SigningDetails;->checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovered effectively matching certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1e
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_1e} :catch_21

    .line 499
    const/4 v1, 0x1

    return v1

    .line 503
    :cond_20
    goto :goto_26

    .line 501
    :catch_21
    move-exception v2

    .line 502
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 504
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to recover certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 506
    const/4 v1, 0x0

    return v1
.end method

.method public static preparePackageParserCache(ZZLjava/lang/String;)Ljava/io/File;
    .registers 13
    .param p0, "forEngBuild"    # Z
    .param p1, "isUserDebugBuild"    # Z
    .param p2, "incrementalVersion"    # Ljava/lang/String;

    .line 1350
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1351
    return-object v0

    .line 1354
    :cond_4
    const-string/jumbo v1, "pm.boot.disable_package_cache"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "PackageManager"

    if-eqz v1, :cond_16

    .line 1355
    const-string v1, "Disabling package parser cache due to system property."

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    return-object v0

    .line 1361
    :cond_16
    invoke-static {}, Landroid/os/Environment;->getPackageCacheDirectory()Ljava/io/File;

    move-result-object v1

    .line 1362
    .local v1, "cacheBaseDir":Ljava/io/File;
    invoke-static {v1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 1363
    return-object v0

    .line 1369
    :cond_21
    sget-object v4, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 1373
    .local v4, "cacheName":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    :goto_28
    if-ge v2, v6, :cond_71

    aget-object v7, v5, v2

    .line 1374
    .local v7, "cacheDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 1375
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Keeping known cache "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 1377
    :cond_51
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Destroying unknown cache "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-static {v7}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 1373
    .end local v7    # "cacheDir":Ljava/io/File;
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1383
    :cond_71
    invoke-static {v1, v4}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1385
    .local v2, "cacheDir":Ljava/io/File;
    if-nez v2, :cond_91

    .line 1387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache directory cannot be created - wiping base dir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 1389
    return-object v0

    .line 1399
    :cond_91
    if-eqz p1, :cond_be

    const-string v0, "eng."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1400
    const-string v0, "Wiping cache directory because the system partition changed."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    new-instance v0, Ljava/io/File;

    .line 1407
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v5, "framework"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1408
    .local v0, "frameworkDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-gez v3, :cond_be

    .line 1409
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 1410
    invoke-static {v1, v4}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1414
    .end local v0    # "frameworkDir":Ljava/io/File;
    :cond_be
    return-object v2
.end method

.method public static realpath(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 212
    :catch_9
    move-exception v0

    .line 213
    .local v0, "ee":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static removeNativeBinariesLI(Lcom/android/server/pm/PackageSetting;)V
    .registers 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 735
    if-eqz p0, :cond_9

    .line 736
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesLI(Ljava/lang/String;)V

    .line 738
    :cond_9
    return-void
.end method

.method static truncateSettingsProblemFileIfNeeded()V
    .registers 10

    .line 316
    const/high16 v0, 0x80000

    .line 318
    .local v0, "MAX_LOG_SIZE":I
    const/4 v1, 0x0

    .line 319
    .local v1, "srcPfd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 321
    .local v2, "backupPfd":Landroid/os/ParcelFileDescriptor;
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v3

    .line 322
    .local v3, "srcFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x80000

    cmp-long v4, v4, v6

    if-gez v4, :cond_1a

    goto :goto_63

    .line 325
    :cond_1a
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getBackupSettingsProblemFile()Ljava/io/File;

    move-result-object v4

    .line 326
    .local v4, "backupFile":Ljava/io/File;
    const/high16 v5, 0x10000000

    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object v1, v5

    .line 328
    const/high16 v5, 0x38000000

    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object v2, v5

    .line 331
    if-eqz v1, :cond_5c

    if-nez v2, :cond_31

    goto :goto_5c

    .line 332
    :cond_31
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    sget v8, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v5, v6, v7, v8}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 333
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J

    .line 334
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 336
    nop

    .line 337
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    .line 336
    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_5a} :catch_72
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_5a} :catch_72
    .catchall {:try_start_4 .. :try_end_5a} :catchall_6a

    .line 343
    nop

    .end local v3    # "srcFile":Ljava/io/File;
    .end local v4    # "backupFile":Ljava/io/File;
    goto :goto_74

    .restart local v3    # "srcFile":Ljava/io/File;
    .restart local v4    # "backupFile":Ljava/io/File;
    :cond_5c
    :goto_5c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 344
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 331
    return-void

    .line 343
    .end local v4    # "backupFile":Ljava/io/File;
    :cond_63
    :goto_63
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 344
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 323
    return-void

    .line 343
    .end local v3    # "srcFile":Ljava/io/File;
    :catchall_6a
    move-exception v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 344
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 345
    throw v3

    .line 340
    :catch_72
    move-exception v3

    .line 343
    nop

    :goto_74
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 344
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 345
    nop

    .line 346
    return-void
.end method

.method static tryParsePackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "codePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1265
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1266
    .local v0, "packageNameEnds":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 1269
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1267
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a valid package folder name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1210
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1211
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p0

    .line 1213
    :cond_a
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_13

    .line 1214
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1216
    :cond_13
    return-object p0
.end method

.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z
    .registers 21
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "sharedUserSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "disabledPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "parsedSignatures"    # Landroid/content/pm/SigningDetails;
    .param p4, "compareCompat"    # Z
    .param p5, "compareRecover"    # Z
    .param p6, "isRollback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 561
    move-object v0, p1

    move-object/from16 v1, p3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 563
    .local v3, "compatMatch":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_9e

    .line 565
    nop

    .line 566
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    .line 565
    invoke-virtual {v1, v4, v6}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v4

    const/16 v7, 0x8

    if-nez v4, :cond_2e

    .line 568
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_2e

    :cond_2c
    move v4, v5

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v4, v6

    .line 571
    .local v4, "match":Z
    :goto_2f
    if-nez v4, :cond_3c

    if-eqz p4, :cond_3c

    .line 572
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v8

    invoke-static {v2, v8, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z

    move-result v4

    .line 574
    move v3, v4

    .line 576
    :cond_3c
    if-nez v4, :cond_5a

    if-eqz p5, :cond_5a

    .line 577
    nop

    .line 579
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    .line 577
    invoke-static {v2, v8, v1, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v8

    if-nez v8, :cond_58

    .line 585
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    .line 582
    invoke-static {v2, v1, v8, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v7

    if-eqz v7, :cond_56

    goto :goto_58

    :cond_56
    move v7, v5

    goto :goto_59

    :cond_58
    :goto_58
    move v7, v6

    :goto_59
    move v4, v7

    .line 589
    :cond_5a
    if-nez v4, :cond_6d

    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 590
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    move-object/from16 v8, p2

    invoke-static {v2, v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignatureInSystem(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v4

    goto :goto_6f

    .line 589
    :cond_6d
    move-object/from16 v8, p2

    .line 594
    :goto_6f
    if-nez v4, :cond_7b

    if-eqz p6, :cond_7b

    .line 598
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v4

    .line 601
    :cond_7b
    if-eqz v4, :cond_7e

    goto :goto_a0

    .line 602
    :cond_7e
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const/4 v6, -0x7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Existing package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " signatures do not match newer version; ignoring!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 563
    .end local v4    # "match":Z
    :cond_9e
    move-object/from16 v8, p2

    .line 608
    :goto_a0
    if-eqz v0, :cond_1a5

    .line 609
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    sget-object v7, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v4, v7, :cond_1a5

    .line 615
    nop

    .line 616
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    .line 615
    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result v4

    .line 620
    .restart local v4    # "match":Z
    nop

    .line 621
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v7

    .line 622
    .local v7, "susPackageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    if-nez v4, :cond_d1

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ne v9, v6, :cond_d1

    .line 623
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d1

    .line 624
    const/4 v4, 0x1

    .line 626
    :cond_d1
    if-nez v4, :cond_db

    if-eqz p4, :cond_db

    .line 627
    iget-object v9, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v2, v9, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z

    move-result v4

    .line 630
    :cond_db
    const/4 v9, 0x2

    if-nez v4, :cond_f7

    if-eqz p5, :cond_f7

    .line 631
    iget-object v10, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, v10, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 632
    invoke-static {v2, v10, v1, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v10

    if-nez v10, :cond_f4

    iget-object v10, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, v10, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 636
    invoke-static {v2, v1, v10, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    move-result v10

    if-eqz v10, :cond_f5

    :cond_f4
    move v5, v6

    :cond_f5
    move v4, v5

    .line 640
    or-int/2addr v3, v4

    .line 642
    :cond_f7
    const-string v5, "Package "

    const/4 v6, -0x8

    if-eqz v4, :cond_17c

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v10

    if-eqz v10, :cond_154

    .line 653
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_103
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v10, v11, :cond_154

    .line 654
    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 658
    .local v11, "shUidPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11a

    .line 659
    goto :goto_151

    .line 661
    :cond_11a
    nop

    .line 662
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    .line 665
    .local v12, "shUidSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-virtual {v1, v12}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v13

    if-eqz v13, :cond_151

    .line 666
    invoke-virtual {v1, v12, v9}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v13

    if-eqz v13, :cond_12c

    goto :goto_151

    .line 668
    :cond_12c
    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " revoked the sharedUserId capability from the signing key used to sign "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 673
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v9

    .line 653
    .end local v11    # "shUidPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "shUidSigningDetails":Landroid/content/pm/SigningDetails;
    :cond_151
    :goto_151
    add-int/lit8 v10, v10, 0x1

    goto :goto_103

    .line 680
    .end local v10    # "i":I
    :cond_154
    iget-object v9, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v9, v9, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1, v9}, Landroid/content/pm/SigningDetails;->hasCommonAncestor(Landroid/content/pm/SigningDetails;)Z

    move-result v9

    if-eqz v9, :cond_15f

    goto :goto_1a5

    .line 682
    :cond_15f
    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " has a signing lineage that diverges from the lineage of the sharedUserId"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v9

    .line 643
    :cond_17c
    new-instance v9, Lcom/android/server/pm/PackageManagerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " has no signatures that match those in shared user "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "; ignoring!"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v6, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v9

    .line 687
    .end local v4    # "match":Z
    .end local v7    # "susPackageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_1a5
    :goto_1a5
    return v3
.end method

.method public static waitForNativeBinariesExtractionForIncremental(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/os/incremental/IncrementalStorage;",
            ">;)V"
        }
    .end annotation

    .line 745
    .local p0, "incrementalStorages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/incremental/IncrementalStorage;>;"
    const-string/jumbo v0, "native_lib_extract"

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 746
    return-void

    .line 754
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 755
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 756
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/incremental/IncrementalStorage;

    .line 757
    .local v2, "storage":Landroid/os/incremental/IncrementalStorage;
    invoke-virtual {v2}, Landroid/os/incremental/IncrementalStorage;->waitForNativeBinariesExtraction()Z
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_2e

    .line 755
    nop

    .end local v2    # "storage":Landroid/os/incremental/IncrementalStorage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 760
    .end local v1    # "i":I
    :cond_25
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 761
    nop

    .line 762
    return-void

    .line 760
    :catchall_2e
    move-exception v1

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 761
    throw v1
.end method
