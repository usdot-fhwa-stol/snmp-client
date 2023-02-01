#include "snmp-client/snmp_client.h"

using namespace fwha_stol::snmp_client;

int main () {

    snmp_client client("localhost", 25);
    return 0;
}