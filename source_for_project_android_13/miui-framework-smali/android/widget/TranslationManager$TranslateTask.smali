.class Landroid/widget/TranslationManager$TranslateTask;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslateTask"
.end annotation


# instance fields
.field blacklist mSource:Ljava/lang/String;

.field blacklist mTarget:Ljava/lang/String;

.field blacklist mWord:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "word"    # Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    .line 228
    iput-object p2, p0, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    .line 229
    iput-object p3, p0, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    .line 230
    return-void
.end method

.method static blacklist equals(Landroid/widget/TranslationManager$TranslateTask;Landroid/widget/TranslationManager$TranslateTask;)Z
    .registers 6
    .param p0, "task1"    # Landroid/widget/TranslationManager$TranslateTask;
    .param p1, "task2"    # Landroid/widget/TranslationManager$TranslateTask;

    .line 233
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    .line 234
    iget-object v2, p0, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    iget-object v3, p1, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    iget-object v3, p1, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    .line 235
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    iget-object v3, p1, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    .line 236
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    .line 234
    :goto_26
    return v0

    .line 237
    :cond_27
    if-nez p0, :cond_2c

    if-nez p1, :cond_2c

    .line 238
    return v0

    .line 240
    :cond_2c
    return v1
.end method
