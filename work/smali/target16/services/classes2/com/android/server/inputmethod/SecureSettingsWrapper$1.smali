.class public Lcom/android/server/inputmethod/SecureSettingsWrapper$1;
.super Ljava/lang/Object;
.source "SecureSettingsWrapper.java"

# interfaces
.implements Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;I)I
    .registers 3

    .line 0
    return p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 0
    return-object p2
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method
