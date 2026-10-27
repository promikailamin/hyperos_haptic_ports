.class public Lcom/android/server/appfunctions/AppFunctionAccessHistoryProvider;
.super Landroid/content/ContentProvider;
.source "AppFunctionAccessHistoryProvider.java"


# static fields
.field public static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field public mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

.field public mMultiUserAccessHistory:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 38
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionAccessHistoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 43
    const-string/jumbo v1, "user/#"

    const/4 v2, 0x0

    const-string v3, "com.android.appfunction.accesshistory"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final accessCheckFlagsEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkCallerPermission()V
    .registers 3

    .line 128
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_APP_FUNCTION_ACCESS"

    const-string v1, "No permission to read AppFunction access history"

    .line 129
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkTargetUserPermission(I)V
    .registers 4

    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 138
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionAccessHistoryProvider;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/android/server/appfunctions/CallerValidator;

    .line 139
    invoke-interface {p0, p1, v0, v1}, Lcom/android/server/appfunctions/CallerValidator;->verifyUserInteraction(III)V

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 99
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Delete is not supported with AppFunctionAccessHistoryProvider"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getTargetUserId(Landroid/net/Uri;)I
    .registers 4

    .line 114
    sget-object p0, Lcom/android/server/appfunctions/AppFunctionAccessHistoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    if-nez p0, :cond_2f

    .line 116
    :try_start_8
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_17} :catch_18

    return p0

    .line 118
    :catch_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse valid target user from uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 92
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Insert is not supported with AppFunctionAccessHistoryProvider"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .registers 6

    .line 52
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->getInstance(Landroid/content/Context;)Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/appfunctions/AppFunctionAccessHistoryProvider;->mMultiUserAccessHistory:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    .line 55
    new-instance v1, Lcom/android/server/appfunctions/CallerValidatorImpl;

    const-class v2, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    .line 58
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    const-class v3, Landroid/os/UserManager;

    .line 59
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/os/UserManager;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/appfunctions/CallerValidatorImpl;-><init>(Landroid/content/Context;Landroid/app/appfunctions/AppFunctionAccessServiceInterface;Landroid/os/UserManager;)V

    iput-object v1, p0, Lcom/android/server/appfunctions/AppFunctionAccessHistoryProvider;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    .line 71
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionAccessHistoryProvider;->accessCheckFlagsEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionAccessHistoryProvider;->checkCallerPermission()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionAccessHistoryProvider;->getTargetUserId(Landroid/net/Uri;)I

    move-result p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionAccessHistoryProvider;->checkTargetUserPermission(I)V

    .line 78
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionAccessHistoryProvider;->mMultiUserAccessHistory:Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->asUser(I)Lcom/android/server/appfunctions/AppFunctionAccessHistory;

    move-result-object p0

    .line 80
    invoke-interface {p0, p2, p3, p4, p5}, Lcom/android/server/appfunctions/AppFunctionAccessHistory;->queryAppFunctionAccessHistory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 109
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Update is not supported with AppFunctionAccessHistoryProvider"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
