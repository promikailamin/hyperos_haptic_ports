.class Lmiui/util/font/MultiLangHelper$2;
.super Ljava/util/ArrayList;
.source "MultiLangHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/font/MultiLangHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 126
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    const-string v0, "com.android.provision"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$2;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$2;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method
