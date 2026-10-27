.class public final Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;
.super Ljava/lang/Object;
.source "InputMethodMenuController.java"

# interfaces
.implements Lcom/android/server/inputmethod/InputMethodMenuController$MenuItem;


# static fields
.field public static sInstance:Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;
    .registers 1

    .line 419
    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;->sInstance:Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;

    if-nez v0, :cond_b

    .line 420
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;->sInstance:Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;

    .line 422
    :cond_b
    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;->sInstance:Lcom/android/server/inputmethod/InputMethodMenuController$DividerItem;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 427
    const-string p0, "DividerItem{}"

    return-object p0
.end method
