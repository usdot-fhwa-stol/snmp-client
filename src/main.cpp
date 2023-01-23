#include "snmp_client/snmp_client.h"

using namespace traffic_signal_controller_service;

int main () {

    snmp_client client("localhost", 25);
    return 0;
}