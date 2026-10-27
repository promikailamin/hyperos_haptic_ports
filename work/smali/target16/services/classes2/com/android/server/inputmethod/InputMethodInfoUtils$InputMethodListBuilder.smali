.class public final Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;
.super Ljava/lang/Object;
.source "InputMethodInfoUtils.java"


# instance fields
.field public final mInputMethodSet:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodInfoUtils-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Ljava/util/ArrayList;
    .registers 2

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public fillAuxiliaryImes(Ljava/util/List;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;
    .registers 9

    .line 85
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 86
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_56

    :cond_19
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 91
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_38

    .line 92
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v4, 0x1

    .line 93
    invoke-static {v3, p2, v4}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->-$$Nest$smisSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 95
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move v2, v4

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_38
    if-eqz v2, :cond_3b

    goto :goto_56

    :cond_3b
    move v1, v0

    .line 102
    :goto_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 103
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 104
    invoke-static {v2, p2, v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->-$$Nest$smisSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 106
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_56
    :goto_56
    return-object p0
.end method

.method public fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;
    .registers 15

    const/4 v0, 0x0

    .line 73
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 75
    invoke-static/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->-$$Nest$smisSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 77
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    move-object p2, v3

    move p3, v4

    move-object p4, v5

    move p5, v6

    move-object p6, v7

    goto :goto_1

    :cond_26
    return-object p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result p0

    return p0
.end method
