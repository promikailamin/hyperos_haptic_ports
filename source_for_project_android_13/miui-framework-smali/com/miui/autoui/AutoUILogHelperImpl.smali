.class public Lcom/miui/autoui/AutoUILogHelperImpl;
.super Ljava/lang/Object;
.source "AutoUILogHelperImpl.java"

# interfaces
.implements Lcom/miui/autoui/AutoUILogHelper;


# static fields
.field public static final blacklist AUTO_UI_ENABLE_PROP:Ljava/lang/String; = "persist.sys.miui_autoui_logging"

.field private static final blacklist LOGGING_STATUS:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 12
    const-string v0, "persist.sys.miui_autoui_logging"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/miui/autoui/AutoUILogHelperImpl;->LOGGING_STATUS:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist wrapperTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIUIAutoUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_d
    return-void
.end method

.method public blacklist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 37
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_d
    return-void
.end method

.method public blacklist e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 80
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_d
    return-void
.end method

.method public blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 86
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 87
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_d
    return-void
.end method

.method public blacklist i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 45
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_d
    return-void
.end method

.method public blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 51
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_d
    return-void
.end method

.method public blacklist isLoggingEnable()Z
    .registers 3

    .line 113
    sget v0, Lcom/miui/autoui/AutoUILogHelperImpl;->LOGGING_STATUS:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_d
    return-void
.end method

.method public blacklist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 23
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :cond_d
    return-void
.end method

.method public blacklist w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_d
    return-void
.end method

.method public blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 65
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 66
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_d
    return-void
.end method

.method public blacklist w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 72
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 73
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_d
    return-void
.end method

.method public blacklist wtf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 108
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_d
    return-void
.end method

.method public blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 100
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 101
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :cond_d
    return-void
.end method

.method public blacklist wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 93
    invoke-virtual {p0}, Lcom/miui/autoui/AutoUILogHelperImpl;->isLoggingEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    invoke-direct {p0, p1}, Lcom/miui/autoui/AutoUILogHelperImpl;->wrapperTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_d
    return-void
.end method
