.class Lmiui/util/font/MultiLangHelper$3;
.super Ljava/util/HashSet;
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
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 168
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 169
    const-string v0, "/system/fonts/MiSansArabicVF.ttf"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$3;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v0, "/system/fonts/MiSansMyanmarVF.ttf"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$3;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v0, "/system/fonts/MiSansDevanagariVF.ttf"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$3;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v0, "/system/fonts/MiSansBengaliVF.ttf"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$3;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v0, "/system/fonts/MiSansGurmukhiVF.ttf"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$3;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v0, "/system/fonts/MiSansGujaratiVF.ttf"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$3;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v0, "/system/fonts/MiSansOdiaVF.ttf"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$3;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v0, "/system/fonts/MiSansTamilVF.ttf"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$3;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v0, "/system/fonts/MiSansTeluguVF.ttf"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$3;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v0, "/system/fonts/MiSansKannadaVF.ttf"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$3;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v0, "/system/fonts/MiSansMalayalamVF.ttf"

    invoke-virtual {p0, v0}, Lmiui/util/font/MultiLangHelper$3;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method
