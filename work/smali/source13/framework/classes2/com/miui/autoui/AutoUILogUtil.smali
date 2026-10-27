.class public Lcom/miui/autoui/AutoUILogUtil;
.super Ljava/lang/Object;
.source "AutoUILogUtil.java"


# static fields
.field private static final blacklist logHelper:Lcom/miui/autoui/AutoUILogHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/miui/autoui/AutoUILogHelper;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autoui/AutoUILogHelper;

    sput-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1}, Lcom/miui/autoui/AutoUILogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 25
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/autoui/AutoUILogHelper;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1}, Lcom/miui/autoui/AutoUILogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 53
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/autoui/AutoUILogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1}, Lcom/miui/autoui/AutoUILogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 33
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/autoui/AutoUILogHelper;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public static blacklist isLoggingEnable()Z
    .registers 1

    .line 69
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0}, Lcom/miui/autoui/AutoUILogHelper;->isLoggingEnable()Z

    move-result v0

    return v0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1}, Lcom/miui/autoui/AutoUILogHelper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 17
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/autoui/AutoUILogHelper;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1}, Lcom/miui/autoui/AutoUILogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 41
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/autoui/AutoUILogHelper;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 45
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1}, Lcom/miui/autoui/AutoUILogHelper;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1}, Lcom/miui/autoui/AutoUILogHelper;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 61
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1, p2}, Lcom/miui/autoui/AutoUILogHelper;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public static blacklist wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 57
    sget-object v0, Lcom/miui/autoui/AutoUILogUtil;->logHelper:Lcom/miui/autoui/AutoUILogHelper;

    invoke-interface {v0, p0, p1}, Lcom/miui/autoui/AutoUILogHelper;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method
